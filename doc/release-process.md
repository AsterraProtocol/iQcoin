Release Process
====================

* update translations (ping wumpus, Diapolo or tcatm on IRC)
* see https://github.com/iQcoin/iQcoin/blob/master/doc/translation_process.md#syncing-with-transifex

* * *

###update (commit) version in sources


	iQcoin-qt.pro
	contrib/verifysfbinaries/verify.sh
	doc/README*
	share/setup.nsi
	src/clientversion.h (change CLIENT_VERSION_IS_RELEASE to true)

###tag version in git

	git tag -s v(new version, e.g. 0.8.0)

###write release notes. git shortlog helps a lot, for example:

	git shortlog --no-merges v(current version, e.g. 0.7.2)..v(new version, e.g. 0.8.0)

* * *

##perform gitian builds

 From a directory containing the iQcoin source, gitian-builder and gitian.sigs
  
	export SIGNER=(your gitian key, ie bluematt, sipa, etc)
	export VERSION=(new version, e.g. 0.8.0)
	pushd ./iQcoin
	git checkout v${VERSION}
	popd
	pushd ./gitian-builder

 Fetch and build inputs: (first time, or when dependency versions change)

	mkdir -p inputs; cd inputs/
	wget 'http://miniupnp.free.fr/files/download.php?file=miniupnpc-1.6.tar.gz' -O miniupnpc-1.6.tar.gz
	wget 'https://www.openssl.org/source/openssl-1.0.1c.tar.gz'
	wget 'http://download.oracle.com/berkeley-db/db-4.8.30.NC.tar.gz'
	wget 'ftp://ftp.simplesystems.org/pub/libpng/png/src/history/zlib/zlib-1.2.6.tar.gz'
	wget 'ftp://ftp.simplesystems.org/pub/libpng/png/src/history/libpng15/libpng-1.5.9.tar.gz'
	wget 'https://fukuchi.org/works/qrencode/qrencode-3.2.0.tar.bz2'
	wget 'https://downloads.sourceforge.net/project/boost/boost/1.54.0/boost_1_54_0.tar.bz2'
	wget 'https://svn.boost.org/trac/boost/raw-attachment/ticket/7262/boost-mingw.patch' -O \ 
	     boost-mingw-gas-cross-compile-2013-03-03.patch
	wget 'https://download.qt-project.org/archive/qt/4.8/4.8.3/qt-everywhere-opensource-src-4.8.3.tar.gz'
	wget 'https://protobuf.googlecode.com/files/protobuf-2.5.0.tar.bz2'
	cd ..
	./bin/gbuild ../iQcoin/contrib/gitian-descriptors/boost-win32.yml
	mv build/out/boost-win32-*.zip inputs/
	./bin/gbuild ../iQcoin/contrib/gitian-descriptors/deps-win32.yml
	mv build/out/iQcoin-deps-*.zip inputs/
	./bin/gbuild ../iQcoin/contrib/gitian-descriptors/qt-win32.yml
	mv build/out/qt-win32-*.zip inputs/
	./bin/gbuild ../iQcoin/contrib/gitian-descriptors/protobuf-win32.yml
	mv build/out/protobuf-win32-*.zip inputs/

 Build iQcoind and iQcoin-qt on Linux32, Linux64, and Win32:
  
	./bin/gbuild --commit iQcoin=v${VERSION} ../iQcoin/contrib/gitian-descriptors/gitian.yml
	./bin/gsign --signer $SIGNER --release ${VERSION} --destination ../gitian.sigs/ ../iQcoin/contrib/gitian-descriptors/gitian.yml
	pushd build/out
	zip -r iQcoin-${VERSION}-linux-gitian.zip *
	mv iQcoin-${VERSION}-linux-gitian.zip ../../../
	popd
	./bin/gbuild --commit iQcoin=v${VERSION} ../iQcoin/contrib/gitian-descriptors/gitian-win32.yml
	./bin/gsign --signer $SIGNER --release ${VERSION}-win32 --destination ../gitian.sigs/ ../iQcoin/contrib/gitian-descriptors/gitian-win32.yml
	pushd build/out
	zip -r iQcoin-${VERSION}-win32-gitian.zip *
	mv iQcoin-${VERSION}-win32-gitian.zip ../../../
	popd
	popd

  Build output expected:

  1. linux 32-bit and 64-bit binaries + source (iQcoin-${VERSION}-linux-gitian.zip)
  2. windows 32-bit binary, installer + source (iQcoin-${VERSION}-win32-gitian.zip)
  3. Gitian signatures (in gitian.sigs/${VERSION}[-win32]/(your gitian key)/

repackage gitian builds for release as stand-alone zip/tar/installer exe

**Linux .tar.gz:**

	unzip iQcoin-${VERSION}-linux-gitian.zip -d iQcoin-${VERSION}-linux
	tar czvf iQcoin-${VERSION}-linux.tar.gz iQcoin-${VERSION}-linux
	rm -rf iQcoin-${VERSION}-linux

**Windows .zip and setup.exe:**

	unzip iQcoin-${VERSION}-win32-gitian.zip -d iQcoin-${VERSION}-win32
	mv iQcoin-${VERSION}-win32/iQcoin-*-setup.exe .
	zip -r iQcoin-${VERSION}-win32.zip iQcoin-${VERSION}-win32
	rm -rf iQcoin-${VERSION}-win32

**Perform Mac build:**

  OSX binaries are created by Gavin Andresen on a 32-bit, OSX 10.6 machine.

	qmake RELEASE=1 USE_UPNP=1 USE_QRCODE=1 iQcoin-qt.pro
	make
	export QTDIR=/opt/local/share/qt4  # needed to find translations/qt_*.qm files
	T=$(contrib/qt_translations.py $QTDIR/translations src/qt/locale)
	python2.7 share/qt/clean_mac_info_plist.py
	python2.7 contrib/macdeploy/macdeployqtplus iQcoin-Qt.app -add-qt-tr $T -dmg -fancy contrib/macdeploy/fancy.plist

 Build output expected: iQcoin-Qt.dmg

###Next steps:

* Code-sign Windows -setup.exe (in a Windows virtual machine) and
  OSX iQcoin-Qt.app (Note: only Gavin has the code-signing keys currently)

* upload builds to SourceForge

* create SHA256SUMS for builds, and PGP-sign it

* update iQcoin.org version
  make sure all OS download links go to the right versions
  
* update download sizes on iQcoin.org/_templates/download.html

* update forum version

* update wiki download links

* update wiki changelog: [https://en.iQcoin.it/wiki/Changelog](https://en.iQcoin.it/wiki/Changelog)

Commit your signature to gitian.sigs:

	pushd gitian.sigs
	git add ${VERSION}/${SIGNER}
	git add ${VERSION}-win32/${SIGNER}
	git commit -a
	git push  # Assuming you can push to the gitian.sigs tree
	popd

-------------------------------------------------------------------------

### After 3 or more people have gitian-built, repackage gitian-signed zips:

From a directory containing iQcoin source, gitian.sigs and gitian zips

	export VERSION=(new version, e.g. 0.8.0)
	mkdir iQcoin-${VERSION}-linux-gitian
	pushd iQcoin-${VERSION}-linux-gitian
	unzip ../iQcoin-${VERSION}-linux-gitian.zip
	mkdir gitian
	cp ../iQcoin/contrib/gitian-downloader/*.pgp ./gitian/
	for signer in $(ls ../gitian.sigs/${VERSION}/); do
	 cp ../gitian.sigs/${VERSION}/${signer}/iQcoin-build.assert ./gitian/${signer}-build.assert
	 cp ../gitian.sigs/${VERSION}/${signer}/iQcoin-build.assert.sig ./gitian/${signer}-build.assert.sig
	done
	zip -r iQcoin-${VERSION}-linux-gitian.zip *
	cp iQcoin-${VERSION}-linux-gitian.zip ../
	popd
	mkdir iQcoin-${VERSION}-win32-gitian
	pushd iQcoin-${VERSION}-win32-gitian
	unzip ../iQcoin-${VERSION}-win32-gitian.zip
	mkdir gitian
	cp ../iQcoin/contrib/gitian-downloader/*.pgp ./gitian/
	for signer in $(ls ../gitian.sigs/${VERSION}-win32/); do
	 cp ../gitian.sigs/${VERSION}-win32/${signer}/iQcoin-build.assert ./gitian/${signer}-build.assert
	 cp ../gitian.sigs/${VERSION}-win32/${signer}/iQcoin-build.assert.sig ./gitian/${signer}-build.assert.sig
	done
	zip -r iQcoin-${VERSION}-win32-gitian.zip *
	cp iQcoin-${VERSION}-win32-gitian.zip ../
	popd

- Upload gitian zips to SourceForge

- Announce the release:

  - Add the release to iQcoin.org: https://github.com/iQcoin/iQcoin.org/tree/master/_releases

  - Release sticky on iQcointalk: https://iQcointalk.org/index.php?board=1.0

  - iQcoin-development mailing list

  - Optionally reddit /r/iQcoin, ...

- Celebrate 

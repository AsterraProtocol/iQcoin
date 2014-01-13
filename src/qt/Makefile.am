include $(top_srcdir)/src/Makefile.include

AM_CPPFLAGS += -I$(top_srcdir)/src \
  -I$(top_builddir)/src/qt \
  -I$(top_builddir)/src/qt/forms \
  $(PROTOBUF_CFLAGS) \
  $(QR_CFLAGS)
bin_PROGRAMS = iQcoin-qt
noinst_LIBRARIES = libiQcoinqt.a
SUBDIRS = $(BUILD_TEST_QT)
DIST_SUBDIRS = test

# iQcoin qt core #
QT_TS = \
  locale/iQcoin_ach.ts \
  locale/iQcoin_af_ZA.ts \
  locale/iQcoin_ar.ts \
  locale/iQcoin_be_BY.ts \
  locale/iQcoin_bg.ts \
  locale/iQcoin_bs.ts \
  locale/iQcoin_ca_ES.ts \
  locale/iQcoin_ca.ts \
  locale/iQcoin_cs.ts \
  locale/iQcoin_cy.ts \
  locale/iQcoin_da.ts \
  locale/iQcoin_de_AT.ts \
  locale/iQcoin_de.ts \
  locale/iQcoin_el_GR.ts \
  locale/iQcoin_en.ts \
  locale/iQcoin_eo.ts \
  locale/iQcoin_es_CL.ts \
  locale/iQcoin_es_MX.ts \
  locale/iQcoin_es.ts \
  locale/iQcoin_et.ts \
  locale/iQcoin_eu_ES.ts \
  locale/iQcoin_fa_IR.ts \
  locale/iQcoin_fa.ts \
  locale/iQcoin_fi.ts \
  locale/iQcoin_fr_CA.ts \
  locale/iQcoin_fr.ts \
  locale/iQcoin_gl.ts \
  locale/iQcoin_gu_IN.ts \
  locale/iQcoin_he.ts \
  locale/iQcoin_hi_IN.ts \
  locale/iQcoin_hr.ts \
  locale/iQcoin_hu.ts \
  locale/iQcoin_id_ID.ts \
  locale/iQcoin_it.ts \
  locale/iQcoin_ja.ts \
  locale/iQcoin_kk_KZ.ts \
  locale/iQcoin_ko_KR.ts \
  locale/iQcoin_la.ts \
  locale/iQcoin_lt.ts \
  locale/iQcoin_lv_LV.ts \
  locale/iQcoin_ms_MY.ts \
  locale/iQcoin_nb.ts \
  locale/iQcoin_nl.ts \
  locale/iQcoin_pam.ts \
  locale/iQcoin_pl.ts \
  locale/iQcoin_pt_BR.ts \
  locale/iQcoin_pt_PT.ts \
  locale/iQcoin_ro_RO.ts \
  locale/iQcoin_ru.ts \
  locale/iQcoin_sk.ts \
  locale/iQcoin_sl_SI.ts \
  locale/iQcoin_sq.ts \
  locale/iQcoin_sr.ts \
  locale/iQcoin_sv.ts \
  locale/iQcoin_th_TH.ts \
  locale/iQcoin_tr.ts \
  locale/iQcoin_uk.ts \
  locale/iQcoin_vi.ts \
  locale/iQcoin_vi_VN.ts \
  locale/iQcoin_zh_CN.ts \
  locale/iQcoin_zh_TW.ts

QT_FORMS_UI = \
  forms/aboutdialog.ui \
  forms/addressbookpage.ui \
  forms/askpassphrasedialog.ui \
  forms/coincontroldialog.ui \
  forms/editaddressdialog.ui \
  forms/intro.ui \
  forms/openuridialog.ui \
  forms/optionsdialog.ui \
  forms/overviewpage.ui \
  forms/receivecoinsdialog.ui \
  forms/receiverequestdialog.ui \
  forms/rpcconsole.ui \
  forms/sendcoinsdialog.ui \
  forms/sendcoinsentry.ui \
  forms/signverifymessagedialog.ui \
  forms/transactiondescdialog.ui

QT_MOC_CPP = \
  moc_aboutdialog.cpp \
  moc_addressbookpage.cpp \
  moc_addresstablemodel.cpp \
  moc_askpassphrasedialog.cpp \
  moc_iQcoinaddressvalidator.cpp \
  moc_iQcoinamountfield.cpp \
  moc_iQcoingui.cpp \
  moc_iQcoinunits.cpp \
  moc_clientmodel.cpp \
  moc_coincontroldialog.cpp \
  moc_coincontroltreewidget.cpp \
  moc_csvmodelwriter.cpp \
  moc_editaddressdialog.cpp \
  moc_guiutil.cpp \
  moc_intro.cpp \
  moc_macdockiconhandler.cpp \
  moc_macnotificationhandler.cpp \
  moc_monitoreddatamapper.cpp \
  moc_notificator.cpp \
  moc_openuridialog.cpp \
  moc_optionsdialog.cpp \
  moc_optionsmodel.cpp \
  moc_overviewpage.cpp \
  moc_paymentserver.cpp \
  moc_qvalidatedlineedit.cpp \
  moc_qvaluecombobox.cpp \
  moc_receivecoinsdialog.cpp \
  moc_receiverequestdialog.cpp \
  moc_recentrequeststablemodel.cpp \
  moc_rpcconsole.cpp \
  moc_sendcoinsdialog.cpp \
  moc_sendcoinsentry.cpp \
  moc_signverifymessagedialog.cpp \
  moc_splashscreen.cpp \
  moc_trafficgraphwidget.cpp \
  moc_transactiondesc.cpp \
  moc_transactiondescdialog.cpp \
  moc_transactionfilterproxy.cpp \
  moc_transactiontablemodel.cpp \
  moc_transactionview.cpp \
  moc_walletframe.cpp \
  moc_walletmodel.cpp \
  moc_walletview.cpp

BITCOIN_MM = \
  macdockiconhandler.mm \
  macnotificationhandler.mm

QT_MOC = \
  iQcoin.moc \
  intro.moc \
  overviewpage.moc \
  rpcconsole.moc

QT_QRC_CPP = qrc_iQcoin.cpp
QT_QRC = iQcoin.qrc

PROTOBUF_CC = paymentrequest.pb.cc
PROTOBUF_H = paymentrequest.pb.h
PROTOBUF_PROTO = paymentrequest.proto

BITCOIN_QT_H = \
  aboutdialog.h \
  addressbookpage.h \
  addresstablemodel.h \
  askpassphrasedialog.h \
  iQcoinaddressvalidator.h \
  iQcoinamountfield.h \
  iQcoingui.h \
  iQcoinunits.h \
  clientmodel.h \
  coincontroldialog.h \
  coincontroltreewidget.h \
  csvmodelwriter.h \
  editaddressdialog.h \
  guiconstants.h \
  guiutil.h \
  intro.h \
  macdockiconhandler.h \
  macnotificationhandler.h \
  monitoreddatamapper.h \
  notificator.h \
  openuridialog.h \
  optionsdialog.h \
  optionsmodel.h \
  overviewpage.h \
  paymentrequestplus.h \
  paymentserver.h \
  qvalidatedlineedit.h \
  qvaluecombobox.h \
  receivecoinsdialog.h \
  receiverequestdialog.h \
  recentrequeststablemodel.h \
  rpcconsole.h \
  sendcoinsdialog.h \
  sendcoinsentry.h \
  signverifymessagedialog.h \
  splashscreen.h \
  trafficgraphwidget.h \
  transactiondesc.h \
  transactiondescdialog.h \
  transactionfilterproxy.h \
  transactionrecord.h \
  transactiontablemodel.h \
  transactionview.h \
  walletframe.h \
  walletmodel.h \
  walletmodeltransaction.h \
  walletview.h

RES_ICONS = \
  res/icons/add.png \
  res/icons/address-book.png \
  res/icons/iQcoin.ico \
  res/icons/iQcoin.png \
  res/icons/iQcoin_testnet.ico \
  res/icons/iQcoin_testnet.png \
  res/icons/clock1.png \
  res/icons/clock2.png \
  res/icons/clock3.png \
  res/icons/clock4.png \
  res/icons/clock5.png \
  res/icons/configure.png \
  res/icons/connect0_16.png \
  res/icons/connect1_16.png \
  res/icons/connect2_16.png \
  res/icons/connect3_16.png \
  res/icons/connect4_16.png \
  res/icons/debugwindow.png \
  res/icons/edit.png \
  res/icons/editcopy.png \
  res/icons/editpaste.png \
  res/icons/export.png \
  res/icons/filesave.png \
  res/icons/history.png \
  res/icons/key.png \
  res/icons/lock_closed.png \
  res/icons/lock_open.png \
  res/icons/overview.png \
  res/icons/qrcode.png \
  res/icons/quit.png \
  res/icons/receive.png \
  res/icons/remove.png \
  res/icons/send.png \
  res/icons/synced.png \
  res/icons/toolbar.png \
  res/icons/toolbar_testnet.png \
  res/icons/transaction0.png \
  res/icons/transaction2.png \
  res/icons/tx_inout.png \
  res/icons/tx_input.png \
  res/icons/tx_output.png \
  res/icons/tx_mined.png

BITCOIN_QT_CPP = \
  aboutdialog.cpp \
  iQcoin.cpp \
  iQcoinaddressvalidator.cpp \
  iQcoinamountfield.cpp \
  iQcoingui.cpp \
  iQcoinunits.cpp \
  clientmodel.cpp \
  csvmodelwriter.cpp \
  guiutil.cpp \
  intro.cpp \
  monitoreddatamapper.cpp \
  notificator.cpp \
  optionsdialog.cpp \
  optionsmodel.cpp \
  qvalidatedlineedit.cpp \
  qvaluecombobox.cpp \
  rpcconsole.cpp \
  signverifymessagedialog.cpp \
  splashscreen.cpp \
  trafficgraphwidget.cpp

if ENABLE_WALLET
BITCOIN_QT_CPP += \
  addressbookpage.cpp \
  addresstablemodel.cpp \
  askpassphrasedialog.cpp \
  coincontroldialog.cpp \
  coincontroltreewidget.cpp \
  editaddressdialog.cpp \
  openuridialog.cpp \
  overviewpage.cpp \
  paymentrequestplus.cpp \
  paymentserver.cpp \
  receivecoinsdialog.cpp \
  receiverequestdialog.cpp \
  recentrequeststablemodel.cpp \
  sendcoinsdialog.cpp \
  sendcoinsentry.cpp \
  transactiondesc.cpp \
  transactiondescdialog.cpp \
  transactionfilterproxy.cpp \
  transactionrecord.cpp \
  transactiontablemodel.cpp \
  transactionview.cpp \
  walletframe.cpp \
  walletmodel.cpp \
  walletmodeltransaction.cpp \
  walletview.cpp
endif

RES_IMAGES = \
  res/images/about.png \
  res/images/splash.png \
  res/images/splash_testnet.png

RES_MOVIES = res/movies/update_spinner.mng

BITCOIN_RC = res/iQcoin-qt-res.rc

libiQcoinqt_a_CPPFLAGS = $(AM_CPPFLAGS) $(QT_INCLUDES) \
  -I$(top_srcdir)/src/qt/forms $(QT_DBUS_INCLUDES)
libiQcoinqt_a_SOURCES = $(BITCOIN_QT_CPP) $(BITCOIN_QT_H) $(QT_FORMS_UI) \
  $(QT_QRC) $(QT_TS) $(PROTOBUF_PROTO) $(RES_ICONS) $(RES_IMAGES) $(RES_MOVIES)

nodist_libiQcoinqt_a_SOURCES = $(QT_MOC_CPP) $(QT_MOC) $(PROTOBUF_CC) \
  $(PROTOBUF_H) $(QT_QRC_CPP)

BUILT_SOURCES = $(nodist_libiQcoinqt_a_SOURCES)

#Generating these with a half-written protobuf header leads to wacky results.
#This makes sure it's done.
$(QT_MOC): $(PROTOBUF_H)
$(QT_MOC_CPP): $(PROTOBUF_H)

if TARGET_DARWIN
  libiQcoinqt_a_SOURCES += $(BITCOIN_MM)
endif
if TARGET_WINDOWS
  libiQcoinqt_a_SOURCES += $(BITCOIN_RC)
endif
#

# iQcoin-qt binary #
iQcoin_qt_CPPFLAGS = $(AM_CPPFLAGS) $(QT_INCLUDES) \
  -I$(top_srcdir)/src/qt/forms
iQcoin_qt_SOURCES = iQcoin.cpp
iQcoin_qt_LDADD = libiQcoinqt.a $(LIBBITCOIN_SERVER)
if ENABLE_WALLET
iQcoin_qt_LDADD += $(LIBBITCOIN_WALLET)
endif
iQcoin_qt_LDADD += $(LIBBITCOIN_CLI) $(LIBBITCOIN_COMMON) $(LIBLEVELDB) $(LIBMEMENV) \
  $(BOOST_LIBS) $(QT_LIBS) $(QT_DBUS_LIBS) $(QR_LIBS) $(PROTOBUF_LIBS) $(BDB_LIBS)

# forms/foo.h -> forms/ui_foo.h
QT_FORMS_H=$(join $(dir $(QT_FORMS_UI)),$(addprefix ui_, $(notdir $(QT_FORMS_UI:.ui=.h))))

#locale/foo.ts -> locale/foo.qm
QT_QM=$(QT_TS:.ts=.qm)

.PHONY: FORCE
.SECONDARY: $(QT_QM)

iQcoinstrings.cpp: FORCE
	$(MAKE) -C $(top_srcdir)/src qt/iQcoinstrings.cpp

translate: iQcoinstrings.cpp $(QT_FORMS_UI) $(QT_FORMS_UI) $(BITCOIN_QT_CPP) $(BITCOIN_QT_H) $(BITCOIN_MM)
	@test -n $(LUPDATE) || echo "lupdate is required for updating translations"
	@QT_SELECT=$(QT_SELECT) $(LUPDATE) $^ -locations relative -no-obsolete -ts locale/iQcoin_en.ts

$(QT_QRC_CPP): $(QT_QRC) $(QT_QM) $(QT_FORMS_H) $(RES_ICONS) $(RES_IMAGES) $(RES_MOVIES) $(PROTOBUF_H)
	@cd $(abs_srcdir); test -f $(RCC) && QT_SELECT=$(QT_SELECT) $(RCC) -name iQcoin -o $(abs_builddir)/$@ $< || \
	  echo error: could not build $@
	$(SED) -i.bak -e '/^\*\*.*Created:/d' $@ && rm $@.bak
	$(SED) -i.bak -e '/^\*\*.*by:/d' $@ && rm $@.bak

CLEANFILES = $(BUILT_SOURCES) $(QT_QM) $(QT_FORMS_H) *.gcda *.gcno

Contents
===========
This directory contains tools for developers working on this repository.

github-merge.sh
----------------

A small script to automate merging pull-requests securely and sign them with GPG.

For example:

  ./github-merge.sh iQcoin/iQcoin 3077

(in any git repository) will help you merge pull request #3077 for the
iQcoin/iQcoin repository.

What it does:
* Fetch master and the pull request.
* Locally construct a merge commit.
* Show the diff that merge results in.
* Ask you to verify the resulting source tree (so you can do a make
check or whatever).
* Ask you whether to GPG sign the merge commit.
* Ask you whether to push the result upstream.

This means that there are no potential race conditions (where a
pullreq gets updated while you're reviewing it, but before you click
merge), and when using GPG signatures, that even a compromised github
couldn't mess with the sources.

Setup
---------
Configuring the github-merge tool for the iQcoin repository is done in the following way:

    git config githubmerge.repository iQcoin/iQcoin
    git config githubmerge.testcmd "make -j4 check" (adapt to whatever you want to use for testing)
    git config --global user.signingkey mykeyid (if you want to GPG sign)


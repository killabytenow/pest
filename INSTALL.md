HOW TO INSTALL
==============


Debian Packages
---------------

Following list shows the required debian libraries for using this library:

    deb> libconvert-asn1-perl
    deb> libcrypt-openssl-rsa-perl
    deb> libcrypt-openssl-pkcs10-perl
    deb> libcrypt-openssl-x509-perl

For installing these packages automatically in Debian/Ubuntu based
distributions, please execute the following shell one-liner (in two lines):

    sudo apt-get update && \
    sudo apt-get install `grep '^ \+deb>' INSTALL.md | sed 's#^ *deb>##'`


Generate documentation
----------------------

Pregenerated documentation is distributed with this program. Nevertheless, if
you need to rebuild it, please execute the following command in the top
directory:

    make

The following files are produced:

    doc/pest.1     PEST Manual page (you can read it with man -l pest.1)
    doc/pest.html  PEST HTML formatted manual page
    doc/pest.txt   PEST TXT formatted manual page
    doc/test.1     TEST Manual page (you can read it with man -l pest.1)
    doc/test.html  TEST HTML formatted manual page
    doc/test.txt   TEST TXT formatted manual page


License
-------

See COPYING.


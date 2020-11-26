PEST & TEST - Perl EST client and the Test EST suite
====================================================

**PEST** is a Perl EST client designed for testing EST implementations. It is
easily modifiable and allows supporting not-standard and extremely strict
standard features.

**TEST** is another Perl program designed for running test suites on EST
implementations. Tests are described using TEST's test description language.
TEST is accompanied by two test suite examples:

- `/pest/test/test.conf` - A complete test suite for testing an EST server
  supporting enrollments based on third-party CA issued certificates. This
  means that clients authenticate themselves using a certificate belonging to
  an external CA during enrollment. Once they are enrolled, re-enrollments are
  conducted using the EST CA.

- `/pest/test/demo/demo.conf` - A complete (and simpler) test suite for testing
  the public EST service found in http://testrfc7030.com/.

Both files have detailed descriptions about its format, syntax, features and
configuration parameters.

**AEST** is another Perl program designed for integrate with TEST and your EST
server. It implements an EST authorizator based on X.509 certificates.


Installation
------------

Read Installation procedure and other useful information in `INSTALL.md`.


Documentation
-------------

PEST is fully documented using the Pod documentation format.
Use `./pest -m` for reading the documentation. You can read it online in
https://htmlpreview.github.io/?https://github.com/killabytenow/pest/blob/main/doc/pest.html

TEST is fully documented using the Pod documentation format.
Use `./test/test -m` for reading the documentation. You can read it online in
https://htmlpreview.github.io/?https://github.com/killabytenow/pest/blob/main/doc/test.html

AEST is fully documented using the Pod documentation format.
Use `./test/aest -m` for reading the documentation. You can read it online in
https://htmlpreview.github.io/?https://github.com/killabytenow/pest/blob/main/doc/aest.html

You can generate documentation in TXT, MAN and HTML format executing `make`.


License
-------

Copyright (C) 2020 Gerardo García Peña <killabytenow@gmail.com>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program in the file COPYING.
If not, see <https://www.gnu.org/licenses/>.


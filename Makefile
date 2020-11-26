#
# pest - Perl EST client
#
#    Copyright (C) 2020 Gerardo García Peña <killabytenow@gmail.com>
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <https://www.gnu.org/licenses/>.
#

TARGET=aest pest test

all: doc $(TARGET:%=doc/%.1) $(TARGET:%=doc/%.html) $(TARGET:%=doc/%.txt)

doc:
	mkdir -p doc

doc/pest.1: pest
	pod2man $< > $@

doc/pest.html : pest
	pod2html $< > $@

doc/pest.txt: pest
	pod2text $< > $@

doc/aest.1: test/aest
	pod2man $< > $@

doc/aest.html : test/aest
	pod2html $< > $@

doc/aest.txt: test/aest
	pod2text $< > $@

doc/test.1: test/test
	pod2man $< > $@

doc/test.html: test/test
	pod2html $< > $@

doc/test.txt: test/test
	pod2text $< > $@

clean:
	rm -f $(TARGET:%=doc/%.1) $(TARGET:%=doc/%.html) $(TARGET:%=doc/%.txt)


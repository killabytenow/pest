# Changelog

All notable changes to this project will be documented in this file.

## [Unreleased]

### Changed

- (test) Check that the 'cert' directory exist before copying anything into it!

## [0.0.9] - 2020-11-27

### Added

- (aest) Added option -a|--aest-db=s for configuring the path to the aest.db
  file.

### Changed

- (test) Added TESTCA in the internal CA dictionary & copy the EST CA PEM chain
  to the certs directory.
- (aest) Fixed typo in AEST doc.

## [0.0.8] - 2020-11-26

### Added

- (aest) Added an authorizator example for deploying an EST server based on a
  whitelist.
- (aest) Added hooks for using the AEST authorizator.

### Changed

- (test) Fixed bug in test 3.1.

## [0.0.7] - 2020-11-23

### Added

- (test) Added new hook 'test_end'.
- Added this Changelog.

## [0.0.6] - 2020-11-18

### Added

- (test) Now is possible to change the 'est' server on each
test/step/enrollment.

### Changed

- (pest) Bugfix: parameter list was sent twice to pest!

## [0.0.5] - 2020-11-17

### Added

- Added two links pointing to the rendered HTML documentation of PEST/TEST
tools in README.
- (test) Test output is logged now.

### Changed

- Fixed typos and documentation erratas.

## [0.0.4] - 2020-11-16

### Added

- Added support to plain base64 enrollment (without PEM headers).

### Changed

- (test) Improved configuration dump command.
- Fixed documentation bugs/typos.

### Removed

- Ignore the 'pod2htmd.tmp' generated by the Makefile.

## [0.0.3] - 2020-11-11

### Changed

- (test) Fixed a bug in the test 3.2 in the official test suite.

## [0.0.2] - 2020-11-10

### Added

- (test) Accept an enrollment if only the order of the SN components has
changed.

### Changed

- Minor changes (format fixes).

### Removed

- Removed temp file.

## [0.0.1] - 2020-11-10

### Added

- First public version.

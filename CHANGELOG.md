# Changelog

All notable changes to GrantDecay are documented in this file.
The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [Unreleased]

### Changed

- Rule tables are being reorganised for the next patch.

## [1.0.1] - 2026-06-30

### Fixed

- The window guard rejects observation windows whose declared bounds and record
  timestamps disagree, instead of trusting the header.
- A fixture for the mismatch, and the smoke run now covers it.


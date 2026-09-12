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

## [1.0.0] - 2025-09-23

### Added

- Stable CLI contract: `surface`, `unused` and `report` with exit codes 0, 1
  and 2.
- `docs/FORMAT.md` as the written contract for the entitlement export, the
  access log and the report keys.
- Deterministic JSON report with a fixed key order.

## [0.9.0] - 2024-06-18

### Added

- A second pass over the access log that separates never-seen principals from
  seen-but-idle ones.
- `--min-window-days` override for the window guard.

## [0.7.0] - 2021-10-26

### Added

- `ungranted-use` findings: permissions exercised in the log that no role
  confers.
- Line numbers on every parse error instead of aborting the run.

## [0.6.0] - 2020-11-17

### Added

- JSON report: `report --format json` with stable key order.
- Per-finding evidence blocks quoting the log lines behind each conclusion.

## [0.5.0] - 2019-09-30

### Added

- `narrowable-role` findings: roles whose every permission was exercised by at
  most one principal.
- Role expansion is printed as a table so the narrowing can be checked by hand.

## [0.4.0] - 2018-10-09

### Added

- `dormant-principal` findings with the window share each principal was absent.
- Window share is reported as days, not as a percentage, so the unit survives
  a copy paste.

## [0.3.0] - 2017-11-28

### Added

- Explicit observation window model: a window shorter than the minimum is
  refused, never silently widened.
- `surface` subcommand printing the effective permission set per principal.

## [0.2.0] - 2016-09-13

### Added

- Access log parser with a required observation window header.
- `unused-permission` findings: granted, never exercised inside the window.

## [0.1.0] - 2015-04-20

### Added

- First release: entitlement export parser that expands roles into effective
  permissions, and a line oriented report with a findings total.

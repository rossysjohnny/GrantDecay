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


<!--
SPDX-License-Identifier: CC-BY-SA-4.0
SPDX-FileCopyrightText: 2026 Jonathan D.A. Jewell (hyperpolymath)
-->

# Changelog

All notable changes to `metadata-grammar` will be documented in this file.

This file is generated from conventional commits by the
[`changelog-reusable.yml`](https://github.com/hyperpolymath/standards/blob/main/.github/workflows/changelog-reusable.yml)
workflow (`hyperpolymath/standards#206`). Adopt the workflow in this repo's CI to keep this file in sync automatically — see
[`templates/cliff.toml`](https://github.com/hyperpolymath/standards/blob/main/templates/cliff.toml)
for the canonical config.

The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/);
this project aims to follow [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- feat(crg): add crg-grade and crg-badge justfile recipes
- feat: add stapeln.toml container definition
- feat: add UX Justfile with doctor, tour, help-me, assail recipes
- feat: deploy UX Manifesto infrastructure
- feat: add CLADE.a2ml — clade taxonomy declaration
- feat: add AI Gatekeeper Protocol manifest
- feat: Journey Grammar for Databases (JGD) - complete specification
- feat: initial metadata-grammar specification

### Fixed

- fix(ci): bump a2ml/k9-validate-action pins to canonical (standards#85) (#5)
- fix(ci): sync hypatia-scan.yml to canonical (kill cd-scanner build drift) (#4)
- fix(ci): adopt canonical hypatia-scan.yml (env.HOME/scanner-layout + Comment-step gate) (#3)
- fix(scorecard): enforce granular permissions and add fuzzing placeholder
- fix(ci): Resolve workflow-linter self-matching and metadata issues
- fix(license): SPDX AGPL-3.0 → PMPL-1.0-or-later in dotfiles
- fix: remove duplicate SCM files from root

### Changed

- refactor(rename): VQL → VCL + verisimdb → verisim
- refactor: migrate 6SCM → 6A2 (.scm → .a2ml format)

### Documentation

- docs: substantive CRG C annotation (EXPLAINME.adoc)
- docs: add EXPLAINME.adoc — prove-it file backing README claims
- docs: add comprehensive documentation index
- docs: comprehensive documentation update - all files current and cross-referenced
- docs: complete arXiv position paper draft for Journey Grammar for Databases
- docs: add Related Work section for arXiv position paper
- docs: enhance philosophy with emerging maps on journeys, add arXiv paper discussion
- docs: add architecture and JGD-SQL specification
- docs: add BACKENDS.adoc - storage independence architecture

### CI

- ci: redistribute concurrency-cancel guard to read-only check workflows (#7)
- ci: bump actions/upload-artifact SHA to current v4 (#2)
- ci: SHA-pin hyperpolymath validate-actions in dogfood-gate
- ci: restore Dependabot security path + wire auto-merge
- ci: deploy dogfood-gate, add Groove manifest and CRG tests

## Pre-history

Prior commits to this file's introduction are recorded in git history but not formally classified into Keep-a-Changelog sections. To backfill, run `git cliff -o CHANGELOG.md` locally using the canonical [`cliff.toml`](https://github.com/hyperpolymath/standards/blob/main/templates/cliff.toml) — this is one-shot mechanical work.

---

<!-- This file was seeded by the 2026-05-26 estate tech-debt audit follow-up (Row-2 Phase 3); see [`hyperpolymath/standards/docs/audits/2026-05-26-estate-documentation-debt.md`](https://github.com/hyperpolymath/standards/blob/main/docs/audits/2026-05-26-estate-documentation-debt.md). -->

<!-- SPDX-License-Identifier: PMPL-1.0-or-later -->
<!-- TOPOLOGY.md — Project architecture map and completion dashboard -->
<!-- Last updated: 2026-02-19 -->

# Journey Grammar for Databases (JGD) — Project Topology

## System Architecture

```
                        ┌─────────────────────────────────────────┐
                        │              CARTOGRAPHER               │
                        │        (CLI, Web UI, verisimdb)         │
                        └───────────────────┬─────────────────────┘
                                            │
                                            ▼
                        ┌─────────────────────────────────────────┐
                        │           APPLICATION LAYER             │
                        │  ┌───────────┐  ┌───────────────────┐  │
                        │  │ Rust CLI  │  │  ReScript UI      │  │
                        │  │ (Systems) │  │  (Visualization)  │  │
                        │  └─────┬─────┘  └────────┬──────────┘  │
                        └────────│─────────────────│──────────────┘
                                 │                 │
                                 ▼                 ▼
                        ┌─────────────────────────────────────────┐
                        │           FFI & BINDINGS LAYER          │
                        │  ┌───────────┐  ┌───────────────────┐  │
                        │  │ Zig FFI   │  │  Julia / Python   │  │
                        │  │ (C ABI)   │  │  Bindings         │  │
                        │  └─────┬─────┘  └────────┬──────────┘  │
                        └────────│─────────────────│──────────────┘
                                 │                 │
                                 ▼                 ▼
                        ┌─────────────────────────────────────────┐
                        │           FORMAL SPEC (IDRIS2)          │
                        │    (D_p/D_n types, correctness proofs)  │
                        └───────────────────┬─────────────────────┘
                                            │
                                            ▼
                        ┌─────────────────────────────────────────┐
                        │             DATA SUBSTRATES             │
                        │ (verisimdb, RDF, SQL, Property Graphs)  │
                        └─────────────────────────────────────────┘

                        ┌─────────────────────────────────────────┐
                        │          REPO INFRASTRUCTURE            │
                        │  Justfile Automation  .machine_readable/  │
                        │  arXiv Position Paper 0-AI-MANIFEST.a2ml  │
                        └─────────────────────────────────────────┘
```

## Completion Dashboard

```
COMPONENT                          STATUS              NOTES
─────────────────────────────────  ──────────────────  ─────────────────────────────────
FORMAL SPEC (PHASE 1)
  EBNF Grammar                      ██████████ 100%    Syntax stable
  Idris2 Types (D_p/D_n)            ██████████ 100%    Correctness proofs active
  OWL Ontology / JSON-LD            ████████░░  80%    SHACL shapes refining
  Metamorphic transforms            ██████░░░░  60%    Category theory proofs

FFI & TOOLING (PHASE 5)
  Zig FFI Implementation            ████░░░░░░  40%    SQL parser active
  Rust CLI (jgd)                    ████░░░░░░  40%    Initial validation tasks
  verisimdb Integration             ██████░░░░  60%    Temporal atlas logic

REPO INFRASTRUCTURE
  Justfile Automation               ██████████ 100%    Standard build/lint tasks
  .machine_readable/                ██████████ 100%    STATE tracking active
  arXiv Position Paper              ██████████ 100%    Ready for submission

─────────────────────────────────────────────────────────────────────────────
OVERALL:                            ██████░░░░  ~60%   Spec ready, Tooling active
```

## Key Dependencies

```
Idris2 Spec ──────► Zig FFI Bridge ──────► Rust/Julia ──────► Application
     │                 │                      │                 │
     ▼                 ▼                      ▼                 ▼
Correctness ──────► JGD-SQL Parser ──────► Registry Sync ──► verisimdb
```

## Update Protocol

This file is maintained by both humans and AI agents. When updating:

1. **After completing a component**: Change its bar and percentage
2. **After adding a component**: Add a new row in the appropriate section
3. **After architectural changes**: Update the ASCII diagram
4. **Date**: Update the `Last updated` comment at the top of this file

Progress bars use: `█` (filled) and `░` (empty), 10 characters wide.
Percentages: 0%, 10%, 20%, ... 100% (in 10% increments).

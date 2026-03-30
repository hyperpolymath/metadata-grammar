# PROOF-NEEDS.md — metadata-grammar

## Current State

- **src/abi/*.idr**: YES — `Types.idr`, `Layout.idr`, `Foreign.idr`
- **Dangerous patterns**: 0
- **LOC**: ~2,300 (Idris2)
- **ABI layer**: Complete Idris2 ABI with types, layout, and FFI

## What Needs Proving

| Component | What | Why |
|-----------|------|-----|
| Grammar completeness | JGD grammar accepts all valid journey expressions | Incomplete grammar silently drops valid queries |
| Grammar soundness | JGD grammar rejects all invalid journey expressions | Accepting invalid input produces wrong results |
| Layout correctness | Memory layout proofs for FFI marshalling | Incorrect layout corrupts data across language boundary |
| Type preservation | Grammar transformations preserve semantic types | Type erasure during transformation loses safety guarantees |

## Recommended Prover

**Idris2** — ABI layer already complete. Grammar completeness and soundness proofs are natural extensions of the existing type definitions. This is an arXiv-ready project — proofs would strengthen the paper.

## Priority

**MEDIUM** — Small, self-contained project with complete ABI layer. Proofs would be relatively straightforward to add and would strengthen the arXiv submission. Grammar soundness/completeness are standard PL theory proofs.

## Template ABI Cleanup (2026-03-29)

Template ABI removed -- was creating false impression of formal verification.
The removed files (Types.idr, Layout.idr, Foreign.idr) contained only RSR template
scaffolding with unresolved {{PROJECT}}/{{AUTHOR}} placeholders and no domain-specific proofs.

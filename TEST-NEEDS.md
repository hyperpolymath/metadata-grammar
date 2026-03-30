# TEST-NEEDS.md — metadata-grammar

> Generated 2026-03-29 by punishing audit.

## Current State

| Category     | Count | Notes |
|-------------|-------|-------|
| Unit tests   | 0     | None |
| Integration  | 1     | ffi/zig/test/integration_test.zig |
| E2E          | 0     | None |
| Benchmarks   | 0     | None |

**Source modules:** 3 Idris2 ABI (Types, Layout, Foreign), 1 Zig FFI main, 1 ReScript module, 9 SCM config/grammar files, 6 Nickel configs.

## What's Missing

### P2P (Property-Based) Tests
- [ ] Grammar parsing: arbitrary metadata string fuzzing
- [ ] Schema validation: property tests for all supported metadata formats

### E2E Tests
- [ ] Full metadata lifecycle: parse -> validate -> transform -> serialize
- [ ] Grammar composition: combine multiple grammars and validate

### Aspect Tests
- **Security:** No tests for injection through metadata fields, malformed grammar exploitation
- **Performance:** No parsing speed benchmarks
- **Concurrency:** N/A
- **Error handling:** No tests for malformed metadata, unsupported formats, grammar conflicts

### Build & Execution
- [ ] Idris2 compilation
- [ ] Zig build + test
- [ ] Example validation

### Benchmarks Needed
- [ ] Metadata parsing throughput
- [ ] Grammar compilation time

### Self-Tests
- [ ] Grammar self-validation (grammar can parse its own format specification)

## Priority

**MEDIUM.** Small project with limited source. The single FFI integration test covers the ABI seam but the actual grammar logic is untested. The 9 SCM grammar files need validation tests.

## FAKE-FUZZ ALERT

- `tests/fuzz/placeholder.txt` is a scorecard placeholder inherited from rsr-template-repo — it does NOT provide real fuzz testing
- Replace with an actual fuzz harness (see rsr-template-repo/tests/fuzz/README.adoc) or remove the file
- Priority: P2 — creates false impression of fuzz coverage

#!/usr/bin/env bash
# SPDX-License-Identifier: PMPL-1.0-or-later
# Copyright (c) 2026 Jonathan D.A. Jewell (hyperpolymath) <j.d.a.jewell@open.ac.uk>
# e2e_test.sh — Structural E2E tests for metadata-grammar.

set -euo pipefail
PASS=0; FAIL=0; BASE=/var/mnt/eclipse/repos/metadata-grammar

assert() {
  if [[ "$2" == "0" ]]; then echo "PASS: $1"; PASS=$((PASS+1))
  else echo "FAIL: $1"; FAIL=$((FAIL+1)); fi
}

echo "=== E2E: Repository Structure ==="
for f in README.adoc LICENSE TEST-NEEDS.md; do
  assert "$f exists" "$([ -f "$BASE/$f" ] && echo 0 || echo 1)"
done

echo ""
echo "=== E2E: Zig FFI Structure ==="
assert "Zig main.zig exists" "$([ -f "$BASE/ffi/zig/src/main.zig" ] && echo 0 || echo 1)"
assert "Zig integration_test.zig exists" "$([ -f "$BASE/ffi/zig/test/integration_test.zig" ] && echo 0 || echo 1)"
assert "Zig build.zig exists" "$([ -f "$BASE/ffi/zig/build.zig" ] && echo 0 || echo 1)"

echo ""
echo "=== E2E: Code Quality ==="
zig_files=$(find "$BASE/ffi/zig" -name "*.zig" 2>/dev/null | wc -l)
assert "Zig files present ($zig_files)" "$([ "$zig_files" -gt 0 ] && echo 0 || echo 1)"
spdx_count=$(find "$BASE/ffi/zig" -name "*.zig" 2>/dev/null | xargs grep -l "SPDX-License-Identifier" 2>/dev/null | wc -l)
assert "Zig files have SPDX ($spdx_count/$zig_files)" "$([ "$spdx_count" -ge "$zig_files" ] && echo 0 || echo 1)"

echo "=== Results: $PASS passed, $FAIL failed ==="; [ "$FAIL" -eq 0 ] && exit 0 || exit 1

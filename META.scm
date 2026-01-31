;; SPDX-License-Identifier: PMPL-1.0-or-later
;; META.scm - Meta-level information for metadata-grammar

(define-module (meta metadata-grammar)
  #:version "1.0"
  #:export (get-meta))

(define (get-meta)
  '((metadata
     (version "1.0")
     (created "2026-01-31")
     (updated "2026-01-31"))

    (architecture-decisions
     ((adr-001
       (title "Use Idris2 for Formal Specification")
       (status accepted)
       (date "2026-01-31")
       (context
        "Metadata correctness is critical. VoID/Dublin Core lack formal semantics. Need to prove properties like non-empty titles, valid date ranges, proper provenance chains.")
       (decision
        "Use Idris2 dependent types for formal specification. Types prove metadata properties at compile-time. Example: Dataset title cannot be empty string (proven by type system).")
       (consequences
        "PROS: Compile-time correctness guarantees. Self-documenting via types. Integration with proven library."
        "CONS: Requires Idris2 knowledge. Longer development time than informal spec."))

      (adr-002
       (title "Grammar Not Just Vocabulary")
       (status accepted)
       (date "2026-01-31")
       (context
        "VoID/Dublin Core/DCAT are vocabularies (terms + definitions). They don't define composition rules, syntax trees, or formal validation. This leads to inconsistent usage and validation gaps.")
       (decision
        "Define a complete grammar: vocabulary + syntax + composition rules + validation. Use SHACL for runtime validation, Idris2 for compile-time proofs.")
       (consequences
        "PROS: Consistent metadata structure. Formal validation. Clear composition rules."
        "CONS: More complex than simple vocabulary. Requires understanding of grammar concepts."))

      (adr-003
       (title "verisimdb as Primary Storage Backend")
       (status accepted)
       (date "2026-01-31")
       (context
        "Metadata evolves over time. Need to track: when dataset was created, when metadata was updated, when validation rules changed, history of compliance status.")
       (decision
        "Integrate with verisimdb (versioned semantic database) for temporal metadata storage. Track full provenance and validation history.")
       (consequences
        "PROS: Immutable metadata history. Query metadata at any point in time. Track validation evolution."
        "CONS: Requires verisimdb deployment. More complex than static RDF files."))

      (adr-004
       (title "Multi-Format Support (RDF + JSON)")
       (status accepted)
       (date "2026-01-31")
       (context
        "Semantic web community uses RDF/Turtle. Web developers prefer JSON/JSON-LD. Schema.org uses JSON-LD for SEO. Need to support both ecosystems equally.")
       (decision
        "Define grammar in RDF (OWL + SHACL) AND JSON-LD context + JSON Schema. Provide bidirectional conversion. Treat both as first-class formats.")
       (consequences
        "PROS: Broader adoption. Web-friendly. SEO benefits via Schema.org alignment."
        "CONS: Must maintain two parallel specs. Conversion complexity."))

      (adr-005
       (title "Legacy Compatibility via Crosswalks")
       (status accepted)
       (date "2026-01-31")
       (context
        "Millions of datasets use VoID, Dublin Core, DCAT. Cannot force migration. Need gradual adoption path.")
       (decision
        "Provide automatic crosswalks (mappings) from Metadata Grammar to VoID/DC/DCAT and vice versa. Support hybrid metadata (some terms from legacy, some from MG).")
       (consequences
        "PROS: Gradual adoption. Backward compatibility. Interoperability with legacy systems."
        "CONS: Crosswalks are lossy (MG has more semantics). Must maintain mapping tables."))))

    (development-practices
     (code-style
      "Follow hyperpolymath standards: Idris2 for ABI, Zig for FFI, ReScript for web UI, Julia for batch scripts.")
     (security
      "All workflows SHA-pinned. SPDX headers mandatory. SHACL validation prevents injection attacks.")
     (testing
      "Property-based testing via Idris2 proofs. Example datasets for validation. Round-trip conversion tests.")
     (versioning
      "Semantic versioning. Grammar changes require major version bump. Backward-compatible extensions are minor versions.")
     (documentation
      "Specification in AsciiDoc. Examples in Turtle and JSON-LD. API docs auto-generated from Idris2.")
     (branching
      "Main branch for stable releases. Development in feature branches. No direct commits to main."))

    (design-rationale
     (why-grammar-not-vocabulary
      "Vocabularies define terms. Grammars define structure, composition, and validation. Metadata needs all three.")
     (why-idris2
      "Dependent types prove metadata properties impossible with traditional type systems. Example: prove dataset.modified >= dataset.created at compile-time.")
     (why-verisimdb
      "Metadata evolves. Need temporal queries like 'Was this dataset compliant on 2025-12-01?' Requires versioned storage.")
     (why-multi-format
      "Semantic web uses RDF. Web uses JSON. Supporting both maximizes adoption and interoperability.")
     (why-zig-ffi
      "Need C ABI for universal bindings (Rust, Python, Julia, etc.). Zig provides memory safety without Rust FFI complexity.")
     (why-legacy-crosswalks
      "Cannot force migration of millions of existing datasets. Crosswalks enable gradual adoption and hybrid use."))))

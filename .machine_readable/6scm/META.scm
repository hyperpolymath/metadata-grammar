;; SPDX-License-Identifier: PMPL-1.0-or-later
;; META.scm - Meta-level information for Voyage Grammar for Data

(define-module (meta voyage-grammar)
  #:version "1.1"
  #:export (get-meta))

(define (get-meta)
  '((metadata
     (version "1.1")
     (created "2026-01-31")
     (updated "2026-01-31"))

    (architecture-decisions
     ((adr-001
       (title "Use Idris2 for Formal Specification")
       (status accepted)
       (date "2026-01-31")
       (context
        "Metadata correctness is critical. VoID/Dublin Core lack formal semantics. Need to prove properties about D_p (phenomenal databases) and their relationship to D_n (noumenal reality). Homoiconic containers require type-level proofs.")
       (decision
        "Use Idris2 dependent types for formal specification. Types prove metadata properties at compile-time. Example: Dataset title cannot be empty (proven by type). Container homoiconicity proven via reflection types.")
       (consequences
        "PROS: Compile-time correctness. Self-documenting. Homoiconic containers provably self-describing. Metamorphic transformations preserve invariants (proven)."
        "CONS: Requires Idris2 knowledge. Longer development time."))

      (adr-002
       (title "Grammar Not Just Vocabulary")
       (status accepted)
       (date "2026-01-31")
       (context
        "VoID/Dublin Core/DCAT are vocabularies (terms + definitions). They don't define: composition rules, validation, transformations, cartographic semantics, exploration guidance.")
       (decision
        "Define a complete grammar: vocabulary + syntax + semantics + pragmatics + metamorphic transformations. Use EBNF for syntax, Idris2 for semantics, category theory for transformations.")
       (consequences
        "PROS: Consistent structure. Formal validation. Provable transformations. Exploration guidance."
        "CONS: More complex than vocabulary. Requires multiple formalisms (EBNF, Idris2, category theory)."))

      (adr-003
       (title "verisimdb as Cartographic Index")
       (status accepted)
       (date "2026-01-31")
       (context
        "D_p (phenomenal databases) evolve over time as we better understand D_n (reality). Need to track: when database created, when metadata updated, when blind spots identified, cartographic evolution, validation history.")
       (decision
        "verisimdb serves as cartographic index (atlas). Indexes D_p federation, tracks spatiotemporal coverage, maps relationships, versions cartographic evolution, guides exploration.")
       (consequences
        "PROS: Immutable history. Temporal queries ('What did we know on 2020-01-01?'). Tracks exploration progress. Coordinates federation."
        "CONS: Requires verisimdb deployment. More complex than static catalogs."))

      (adr-004
       (title "D_p and D_n Classification")
       (status accepted)
       (date "2026-01-31")
       (context
        "Traditional database classifications (relational, graph, document) focus on implementation. We need a classification based on relationship to reality. Philosophical terms (phenomenal/noumenal) are jargon.")
       (decision
        "Introduce D_p (phenomenal database - observations) and D_n (noumenal database - reality itself) notation. D_p instances approximate D_n. Classification is orthogonal to implementation (D_p can be SQL, RDF, etc.).")
       (consequences
        "PROS: Clear map/territory distinction. Mathematical notation. Implementation-independent. Enables cartographic reasoning."
        "CONS: New terminology to learn. D_n is unknowable (philosophical complexity)."))

      (adr-005
       (title "Homoiconic Storage Containers")
       (status accepted)
       (date "2026-01-31")
       (context
        "Databases (storage containers) and their contents are typically described separately. Lisp demonstrates power of homoiconicity (code is data). Container metadata should use same grammar as data metadata.")
       (decision
        "Storage containers (verisimdb, SQL DB, RDF store) are D_p instances described using VoyageGrammar. Container structure, data contents, and grammar itself all use same formalism. Enables reflection and self-description.")
       (consequences
        "PROS: Unified formalism. Containers can describe themselves. Enables reflection. Metamorphic containers can transform while preserving contents."
        "CONS: Implementation complexity. Requires careful type-level design."))

      (adr-006
       (title "Metamorphic Transformations")
       (status accepted)
       (date "2026-01-31")
       (context
        "D_p instances need to transform between representations (RDF ↔ JSON-LD ↔ Graph ↔ SQL) while preserving semantics. Containers need to migrate between storage models. Need formal guarantees of invariant preservation.")
       (decision
        "Define metamorphic transformations using category theory. Transformations are functors between categories. Invariants proven via Idris2. Grammar defines valid transformation spaces.")
       (consequences
        "PROS: Provable correctness. Storage-model-independent. Enables migration. Formal semantics."
        "CONS: Requires category theory expertise. Complex implementation."))

      (adr-007
       (title "White Box in Darkness Paradigm")
       (status accepted)
       (date "2026-01-31")
       (context
        "Two decades obsessing over 'black box problem' in AI/data. But databases are transparent (we built them). The real mystery is unmeasured reality beyond our data.")
       (decision
        "Invert the paradigm: Boxes are white (transparent databases). Darkness is outside (unmeasured territory). Focus on exploration, not interpretability. Track coverage, blind spots, unknown unknowns.")
       (consequences
        "PROS: Reframes data science as exploration. Epistemic humility. Guides data collection. Honest about limitations."
        "CONS: Philosophical shift may confuse. Requires explaining inversion."))

      (adr-008
       (title "Three-Zone Model")
       (status accepted)
       (date "2026-01-31")
       (context
        "Reality has measured parts (known), identified gaps (known unknowns), and unconceived domains (unknown unknowns). VoID/Dublin Core don't distinguish these.")
       (decision
        "Zone 1: White Box (~15% coverage) - D_p instances we've created. Zone 2: Known Darkness (~25%) - blind spots we're aware of. Zone 3: Unknown Darkness (~60%) - unknown unknowns. Track all three explicitly.")
       (consequences
        "PROS: Epistemic humility. Guides exploration priorities. Honest coverage estimates."
        "CONS: Coverage percentages are uncertain. Zone 3 is fundamentally unknowable."))

      (adr-009
       (title "Multi-Formalism Specification")
       (status accepted)
       (date "2026-01-31")
       (context
        "VoyageGrammar requires: syntax (EBNF), semantics (Idris2), transformations (category theory), validation (SHACL), queries (SPARQL). Single formalism insufficient.")
       (decision
        "Use multiple formal systems: EBNF for syntax, Idris2 for type semantics, category theory for transformations, SHACL for runtime validation, SPARQL for queries. Unified by VoyageGrammar conceptual framework.")
       (consequences
        "PROS: Each formalism suited to its domain. Rigorous at all levels. Provable properties."
        "CONS: Steep learning curve. Complex tool chain. Integration overhead."))

      (adr-010
       (title "Voyage as Core Metaphor")
       (status accepted)
       (date "2026-01-31")
       (context
        "VoID (Vocabulary of Interlinked Datasets) is static, passive. Need active, exploratory name reflecting temporal evolution and discovery journey.")
       (decision
        "Name: 'Voyage Grammar for Data' (VGD). Voyage captures: exploration journey, temporal progression, discovery process, cartographic mission. Grammar: formal structure, composition rules, validation.")
       (consequences
        "PROS: Active, exploratory metaphor. Natural successor to VoID. Captures temporal evolution."
        "CONS: Possible confusion with 'voyage' as travel (vs. exploration/discovery).")))

    (development-practices
     (code-style
      "Follow hyperpolymath standards: Idris2 for ABI/types, Zig for FFI, ReScript for web UI, Julia for batch scripts. EBNF for syntax, category theory for transformations.")
     (security
      "All workflows SHA-pinned. SPDX headers mandatory. SHACL validation prevents injection. Reflection limited to safe operations.")
     (testing
      "Property-based testing via Idris2 proofs. Metamorphic transformation round-trips. Coverage estimates validated against known data. Example D_p instances for validation.")
     (versioning
      "Semantic versioning. Grammar changes = major version. Backward-compatible extensions = minor. D_p/D_n classification additions = minor.")
     (documentation
      "Specification in AsciiDoc. Examples in Turtle and JSON-LD. Philosophical framework in PHILOSOPHY.adoc. Practical guide in CARTOGRAPHY.adoc. API docs auto-generated from Idris2.")
     (branching
      "Main branch for stable. Development in feature branches. No direct commits to main."))

    (design-rationale
     (why-voyage-not-void
      "VoID is static vocabulary. Voyage captures exploration journey, temporal evolution, progressive discovery. Grammar adds formal rules beyond vocabulary.")
     (why-d-p-d-n-notation
      "Mathematical notation cleaner than phenomenal/noumenal jargon. Captures map/territory distinction. Implementation-independent classification.")
     (why-homoiconic-containers
      "Unified formalism for container and contents. Enables reflection and self-description. Simplifies tooling. Lisp demonstrates power of homoiconicity.")
     (why-metamorphic-transformations
      "Storage-model-independent. Enables migration. Provable correctness. Category theory provides rigorous semantics.")
     (why-white-box-paradigm
      "Databases are transparent (we built them). Real mystery is unmeasured reality. Reframes problem from interpretability to exploration.")
     (why-three-zones
      "Epistemic humility. Distinguishes known unknowns from unknown unknowns. Guides exploration priorities. Honest about vast darkness.")
     (why-multiple-formalisms
      "No single formalism sufficient. EBNF for syntax, Idris2 for semantics, category theory for transformations. Each best for its domain.")
     (why-verisimdb-integration
      "Cartographic evolution requires temporal versioning. Need to query 'What did we know on date X?' verisimdb provides atlas infrastructure.")
     (why-a2ml-k9-integration
      "a2ml compiles VGD specs to executable forms. k9-svc routes serialization. Division of concerns: VGD = standard, a2ml = compilation, k9 = routing.")
     (why-epistemic-humility
      "Scientific honesty. Unknown unknowns are vast. Coverage estimates uncertain. Acknowledging ignorance is progress, not failure."))))

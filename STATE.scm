;; SPDX-License-Identifier: PMPL-1.0-or-later
;; STATE.scm - Current project state for metadata-grammar

(define-module (state metadata-grammar)
  #:version "0.1.0"
  #:export (get-state))

(define (get-state)
  '((metadata
     (version "0.1.0")
     (schema-version "1.0")
     (created "2026-01-31")
     (updated "2026-01-31")
     (project "metadata-grammar")
     (repo "https://github.com/hyperpolymath/metadata-grammar"))

    (project-context
     (name "Journey Grammar for Databases")
     (tagline "Cartographic infrastructure for mapping reality through data")
     (key-concepts "D_p" "D_n" "white-box-in-darkness" "homoiconic" "metamorphic" "emerging-maps")
     (tech-stack
      (specification "Idris2" "SHACL" "OWL" "JSON-LD" "EBNF" "Category-Theory")
      (implementation "Zig" "ReScript" "Julia" "Rust")
      (integration "verisimdb" "SPARQL" "VQL"))
     (rsr-compliant #t))

    (current-position
     (phase "documentation-complete")
     (overall-completion 30)
     (components
      ((name "Philosophical Framework")
       (completion 100)
       (status "PHILOSOPHY.adoc, VISION-BLINDSPOT.adoc complete with map/territory and emerging maps"))
      ((name "Practical Documentation")
       (completion 95)
       (status "CARTOGRAPHY.adoc, BACKENDS.adoc, JGD-SQL.adoc complete"))
      ((name "Technical Specifications")
       (completion 90)
       (status "ARCHITECTURE.adoc, CONCEPT.adoc complete"))
      ((name "Project Management")
       (completion 100)
       (status "ROADMAP.adoc, STATE.scm, ECOSYSTEM.scm, META.scm complete"))
      ((name "arXiv Position Paper")
       (completion 20)
       (status "Discussion document created, ready to draft paper"))
      ((name "Formal Specification")
       (completion 0)
       (status "Phase 1 - Idris2 grammar, SHACL, JSON-LD pending"))
      ((name "Implementation")
       (completion 0)
       (status "Phase 2-3 - Zig FFI, metamorphic library pending"))
      ((name "Tooling")
       (completion 0)
       (status "Phase 4-5 - CLI, bindings, integration pending")))
     (working-features
      "Complete documentation framework, paradigm shift articulated, architecture defined"))

    (route-to-mvp
     (milestones
      ((name "Phase 1: Core Specification")
       (status "in-progress")
       (items
        "Idris2 formal grammar definition"
        "SHACL shapes for core metadata"
        "JSON-LD context for web integration"
        "OWL ontology for reasoning"
        "Crosswalks to VoID/Dublin Core/DCAT"))
      ((name "Phase 2: Validation Tooling")
       (status "not-started")
       (items
        "Zig FFI for C ABI validation"
        "Rust CLI for metadata operations"
        "Julia batch conversion scripts"))
      ((name "Phase 3: verisimdb Integration")
       (status "not-started")
       (items
        "Storage backend integration"
        "Temporal validation history"
        "SPARQL endpoint with time queries"))))

    (blockers-and-issues
     (critical
      "None currently")
     (high
      "Need to define core namespace URI (https://hyperpolymath.org/ns/metadata-grammar#?)")
     (medium
      "Coordinate with verisimdb project on integration points")
     (low
      "Documentation site setup"))

    (critical-next-actions
     (immediate
      "Define Idris2 type system for core metadata"
      "Create SHACL shapes for validation")
     (this-week
      "JSON-LD context for core terms"
      "Crosswalk mapping tables (VoID/DC/DCAT)")
     (this-month
      "Idris2 ABI for validation"
      "Zig FFI implementation"))

    (session-history
     ((date "2026-01-31T00:00")
      (accomplishments
       "Created metadata-grammar repo from rsr-template"
       "Wrote CONCEPT.adoc with full architecture"
       "Documented VoID/Dublin Core integration"
       "Defined 3-layer architecture (Core/Extensions/Bridges)"
       "Specified verisimdb integration approach"))

     ((date "2026-01-31T12:00")
      (accomplishments
       "Renamed to Journey Grammar for Databases (JGD)"
       "Articulated paradigm shift: white box in darkness"
       "Introduced D_p/D_n notation (phenomenal/noumenal databases)"
       "Created PHILOSOPHY.adoc with three-zone model"
       "Created VISION-BLINDSPOT.adoc with Nature paper analogy"
       "Created CARTOGRAPHY.adoc practical guide"
       "Created ROADMAP.adoc 6-phase plan"
       "Updated STATE.scm, ECOSYSTEM.scm, META.scm"))

     ((date "2026-01-31T16:00")
      (accomplishments
       "Created BACKENDS.adoc storage independence architecture"
       "Created JGD-SQL.adoc accessibility layer"
       "Created ARCHITECTURE.adoc 4-layer system design"
       "Documented VQL temporal query extensions"
       "Specified Idris2 ABI + Zig FFI approach"))

     ((date "2026-01-31T18:00")
      (accomplishments
       "Enhanced PHILOSOPHY.adoc with journey-centric cartography"
       "Added 'Emerging Maps on Journeys' section"
       "Emphasized map/territory distinction and temporal evolution"
       "Created ARXIV-PAPER-DISCUSSION.adoc"
       "Analyzed arXiv paper timing (position paper ready now)"
       "Drafted paper structure and timeline")))))

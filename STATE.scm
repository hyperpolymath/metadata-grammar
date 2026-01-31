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
     (name "Metadata Grammar")
     (tagline "Formal, integrated metadata framework succeeding VoID, Dublin Core, and DCAT")
     (tech-stack
      (specification "Idris2" "SHACL" "OWL" "JSON-LD")
      (implementation "Zig" "ReScript" "Julia" "Rust")
      (integration "verisimdb" "SPARQL"))
     (rsr-compliant #t))

    (current-position
     (phase "proof-of-concept")
     (overall-completion 5)
     (components
      ((name "Concept Documentation")
       (completion 95)
       (status "CONCEPT.adoc written, needs review"))
      ((name "Formal Specification")
       (completion 0)
       (status "Not started - Idris2 grammar pending"))
      ((name "SHACL Shapes")
       (completion 0)
       (status "Not started - validation rules pending"))
      ((name "Tooling")
       (completion 0)
       (status "Not started - awaiting specification")))
     (working-features
      "Documentation, concept, architectural design"))

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
     ((date "2026-01-31")
      (accomplishments
       "Created metadata-grammar repo from rsr-template"
       "Wrote CONCEPT.adoc with full architecture"
       "Documented VoID/Dublin Core integration"
       "Defined 3-layer architecture (Core/Extensions/Bridges)"
       "Specified verisimdb integration approach")))))

;; SPDX-License-Identifier: PMPL-1.0-or-later
;; STATE.scm - Current project state for Voyage Grammar for Data

(define-module (state voyage-grammar)
  #:version "0.2.0"
  #:export (get-state))

(define (get-state)
  '((metadata
     (version "0.2.0")
     (schema-version "1.0")
     (created "2026-01-31")
     (updated "2026-01-31")
     (project "voyage-grammar")
     (aka "metadata-grammar" "VGD")
     (successor-to "VoID" "Dublin-Core" "DCAT")
     (repo "https://github.com/hyperpolymath/metadata-grammar"))

    (project-context
     (name "Voyage Grammar for Data")
     (tagline "Cartographic infrastructure for mapping reality through data")
     (paradigm-shift "White box in darkness: Our databases are transparent, reality is dark")
     (core-insight "Stop obsessing over black boxes, start exploring the unmeasured territory")
     (tech-stack
      (specification "Idris2" "SHACL" "OWL" "JSON-LD" "EBNF")
      (implementation "Zig" "ReScript" "Julia" "Rust")
      (integration "verisimdb" "a2ml" "k9-svc" "SPARQL"))
     (rsr-compliant #t))

    (current-position
     (phase "proof-of-concept")
     (overall-completion 15)
     (components
      ((name "Philosophical Framework")
       (completion 95)
       (status "PHILOSOPHY.adoc, VISION-BLINDSPOT.adoc complete"))
      ((name "Practical Guide")
       (completion 90)
       (status "CARTOGRAPHY.adoc complete with examples"))
      ((name "Concept Documentation")
       (completion 90)
       (status "CONCEPT.adoc updated with paradigm shift"))
      ((name "D_p/D_n Classification")
       (completion 30)
       (status "Notation defined, needs formalization"))
      ((name "Homoiconic Container Model")
       (completion 20)
       (status "Concept defined, needs implementation"))
      ((name "Metamorphic Transformations")
       (completion 10)
       (status "Theory sketched, needs category theory formalization"))
      ((name "Formal Specification")
       (completion 5)
       (status "Idris2 grammar pending, EBNF needed"))
      ((name "SHACL Shapes")
       (completion 0)
       (status "Not started"))
      ((name "Tooling")
       (completion 0)
       (status "Awaiting specification")))
     (working-features
      "Documentation, philosophical framework, cartographic paradigm, D_p/D_n notation"))

    (route-to-mvp
     (milestones
      ((name "Phase 1: Formal Specification")
       (status "in-progress")
       (items
        "EBNF for Turtle/JSON-LD syntax"
        "Idris2 type system for D_p/D_n"
        "Category theory for metamorphic transformations"
        "SHACL shapes for core metadata"
        "JSON-LD context for VGD namespace"
        "OWL ontology with homoiconic properties"))
      ((name "Phase 2: Homoiconic Container Model")
       (status "not-started")
       (items
        "Define storage container abstraction (vgd:StorageContainer)"
        "Implement homoiconic self-description"
        "Reflection API for containers"
        "Container metadata in same grammar as contents"))
      ((name "Phase 3: Metamorphic Library")
       (status "not-started")
       (items
        "Define valid transformations (RDF ↔ JSON-LD ↔ Graph ↔ SQL)"
        "Invariant preservation proofs (Idris2)"
        "Transformation API"
        "Metamorphic history tracking"))
      ((name "Phase 4: Integration")
       (status "not-started")
       (items
        "verisimdb as cartographic index"
        "a2ml compilation layer"
        "k9-svc MIME type routing"
        "SPARQL endpoint with D_p/D_n queries"))
      ((name "Phase 5: Tooling")
       (status "not-started")
       (items
        "Zig FFI validation library"
        "Rust CLI for VGD operations"
        "ReScript web UI for metadata creation"
        "Julia batch conversion from VoID/DC/DCAT"))))

    (blockers-and-issues
     (critical
      "Need to decide: Rename repo to voyage-grammar or keep metadata-grammar?")
     (high
      "EBNF formalization needs multiple formal systems, not just grammar"
      "D_p/D_n classification needs rigorous mathematical foundation"
      "Metamorphic transformations need category theory expertise")
     (medium
      "Container homoiconicity needs implementation examples"
      "verisimdb integration protocol needs specification"
      "Legacy crosswalks (VoID/DC/DCAT) need validation")
     (low
      "Documentation site setup"
      "MIME type registration for vgd: namespace"))

    (critical-next-actions
     (immediate
      "Create EBNF for VGD Turtle syntax"
      "Define Idris2 types for D_p and D_n"
      "Formalize storage container abstraction")
     (this-week
      "SHACL shapes for core VGD metadata"
      "JSON-LD context for vgd: namespace"
      "Category theory formalization of metamorphic transforms")
     (this-month
      "Implement homoiconic container in Idris2"
      "verisimdb integration design document"
      "First metamorphic transformation (RDF ↔ JSON-LD)"))

    (key-concepts
     (D_p "Phenomenal database - observations/measurements of reality")
     (D_n "Noumenal database - reality itself, unknowable directly")
     (white-box "Our databases are transparent, we built them")
     (darkness "Unmeasured reality beyond our maps")
     (homoiconic "Container and contents use same grammar")
     (metamorphic "Transforms between representations preserving invariants")
     (cartographic "Progressive mapping of reality through exploration")
     (voyage "The journey of discovery, not just the destination"))

    (session-history
     ((date "2026-01-31")
      (accomplishments
       "Created metadata-grammar repo from rsr-template"
       "Wrote CONCEPT.adoc with VoID/Dublin Core integration"
       "Developed philosophical framework (PHILOSOPHY.adoc)"
       "Created vision blind spot analogy (VISION-BLINDSPOT.adoc)"
       "Wrote practical cartography guide (CARTOGRAPHY.adoc)"
       "Defined D_p/D_n notation (phenomenal/noumenal databases)"
       "Conceptualized homoiconic storage containers"
       "Explored metamorphic transformations"
       "Converged on 'Voyage Grammar for Data' as name"
       "Integrated with verisimdb, a2ml, k9-svc"
       "Established three-zone model (white box, known darkness, unknown darkness)")))))

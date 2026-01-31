;; SPDX-License-Identifier: PMPL-1.0-or-later
;; ECOSYSTEM.scm - metadata-grammar's position in the hyperpolymath ecosystem

(ecosystem
 (version "1.0")
 (name "metadata-grammar")
 (type "specification")
 (media-type "application/vnd.ecosystem+scm")

 (purpose
  "Formal, compositional grammar for dataset metadata, succeeding and unifying VoID, Dublin Core, and DCAT")

 (position-in-ecosystem
  "Core infrastructure for semantic web projects. Provides formal metadata framework with verisimdb integration for temporal versioning and validation tracking.")

 (related-projects
  ((name "verisimdb")
   (url "https://github.com/hyperpolymath/verisimdb")
   (relationship "primary-integration")
   (description "Versioned semantic database - storage backend for metadata-grammar datasets with temporal validation tracking"))

  ((name "rsr-template-repo")
   (url "https://github.com/hyperpolymath/rsr-template-repo")
   (relationship "infrastructure")
   (description "Repository template providing RSR compliance, workflows, checkpoint files"))

  ((name "proven")
   (url "https://github.com/hyperpolymath/proven")
   (relationship "dependency")
   (description "Idris2 formal verification library - used for metadata type proofs"))

  ((name "VoID")
   (url "http://rdfs.org/ns/void")
   (relationship "predecessor")
   (description "Vocabulary of Interlinked Datasets - technical dataset metadata (being succeeded)"))

  ((name "Dublin Core")
   (url "http://purl.org/dc/terms/")
   (relationship "predecessor")
   (description "Resource metadata standard - descriptive metadata (being succeeded)"))

  ((name "DCAT")
   (url "http://www.w3.org/ns/dcat")
   (relationship "predecessor")
   (description "Data Catalog Vocabulary - catalog metadata (being succeeded)"))

  ((name "gitbot-fleet")
   (url "https://github.com/hyperpolymath/gitbot-fleet")
   (relationship "potential-consumer")
   (description "Could use metadata-grammar for repo metadata and provenance tracking"))

  ((name "Hypatia")
   (url "https://github.com/hyperpolymath/hypatia")
   (relationship "potential-consumer")
   (description "Could use metadata-grammar for scan result metadata and provenance")))

 (what-this-is
  "A formal metadata framework that provides:"
  "- Compositional grammar (vocabulary + syntax + rules + validation)"
  "- Dependent type proofs (Idris2) for metadata correctness"
  "- SHACL validation for runtime checking"
  "- Multi-format support (RDF, JSON-LD, JSON Schema)"
  "- Temporal versioning via verisimdb integration"
  "- Legacy compatibility (automatic crosswalks to VoID/DC/DCAT)")

 (what-this-is-not
  "- Not just another vocabulary (it's a complete grammar)"
  "- Not RDF-only (supports JSON-LD and JSON Schema equally)"
  "- Not a replacement for domain-specific schemas (it's extensible)"
  "- Not incompatible with legacy systems (provides crosswalks)"))

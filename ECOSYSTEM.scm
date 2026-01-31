;; SPDX-License-Identifier: PMPL-1.0-or-later
;; ECOSYSTEM.scm - Journey Grammar for Databases position in the hyperpolymath ecosystem

(ecosystem
 (version "1.1")
 (name "metadata-grammar")
 (full-name "Journey Grammar for Databases (JGD)")
 (type "specification")
 (media-type "application/vnd.ecosystem+scm")

 (purpose
  "Cartographic infrastructure for mapping reality through data. Formal grammar for phenomenal databases (D_p), tracking spatiotemporal coverage, blind spots, and epistemic humility. Succeeds VoID, Dublin Core, and DCAT with homoiconic containers and metamorphic transformations.")

 (position-in-ecosystem
  "Core cartographic standard for exploratory data science. Provides formal infrastructure for tracking what we've measured (white box), what gaps we've identified (known darkness), and what we haven't conceived (unknown unknowns). Coordinates federated exploration via verisimdb atlas.")

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
  "Cartographic infrastructure for exploratory data science:"
  "- D_p/D_n classification (phenomenal databases vs noumenal reality)"
  "- Three-zone model (white box 15%, known darkness 25%, unknown unknowns 60%)"
  "- Homoiconic containers (databases describe themselves)"
  "- Metamorphic transformations (RDF ↔ JSON-LD ↔ Graph ↔ SQL with proofs)"
  "- Temporal cartography (maps emerge from journeys, tracked via verisimdb)"
  "- Compositional grammar (EBNF syntax, Idris2 semantics, category theory transforms)"
  "- Epistemic humility (machine-readable blind spots, coverage metrics)"
  "- Atlas-based federation (verisimdb coordinates distributed D_p instances)"
  "- SQL accessibility (JGD-SQL compiles to SPARQL for 80% use cases)"
  "- Paradigm shift (from black box interpretability to dark territory exploration)")

 (what-this-is-not
  "- Not just a vocabulary (it's a complete formal grammar)"
  "- Not claiming to invent map/territory (applies Korzybski 1931 to databases)"
  "- Not claiming to invent phenomenal/noumenal (applies Kant 1781 to data)"
  "- Not storage-dependent (works on RDF, Graph, SQL, Document stores)"
  "- Not verisimdb-only (verisimdb is canonical, but JGD works elsewhere)"
  "- Not incompatible with VoID/DCAT (provides crosswalks and migration)"
  "- Not claiming 15%/25%/60% is precise (epistemic humility about estimates)"
  "- Not focusing on interpretability (inverts to exploration)"))

;; SPDX-License-Identifier: PMPL-1.0-or-later
;; ECOSYSTEM.scm - Voyage Grammar's position in the hyperpolymath ecosystem

(ecosystem
 (version "1.0")
 (name "voyage-grammar")
 (aka "metadata-grammar" "VGD")
 (type "specification" "meta-database")
 (media-type "application/vnd.ecosystem+scm")

 (purpose
  "Formal cartographic infrastructure for mapping reality through data. Successor to VoID, Dublin Core, and DCAT. Enables homoiconic, metamorphic phenomenal databases (D_p) that progressively approximate the noumenal database (D_n).")

 (position-in-ecosystem
  "Core cartographic standard for semantic web and data federation. Provides grammar for self-describing, transformable databases that track their relationship to reality. Integrates with verisimdb (atlas), a2ml (compilation), k9-svc (routing) to enable exploration of unmeasured reality.")

 (related-projects
  ((name "verisimdb")
   (url "https://github.com/hyperpolymath/verisimdb")
   (relationship "primary-integration")
   (description "Cartographic index (atlas) for D_p federation. Provides temporal versioning, spatiotemporal indexing, and exploration coordination. VoyageGrammar describes databases stored in verisimdb."))

  ((name "a2ml")
   (url "https://github.com/hyperpolymath/a2ml")
   (relationship "compilation-layer")
   (description "Abstract-to-ML compiler. Compiles VoyageGrammar formal specs to executable forms: SHACL shapes, JSON Schema, validation predicates, ML models for metadata extraction."))

  ((name "k9-svc")
   (url "https://github.com/hyperpolymath/k9")
   (relationship "serialization-routing")
   (description "MIME type service layer. Routes VGD metadata requests to appropriate serializers (Turtle, JSON-LD, XML, Protobuf) based on content negotiation. Handles Level 7 (phonology) in grammar hierarchy."))

  ((name "proven")
   (url "https://github.com/hyperpolymath/proven")
   (relationship "dependency")
   (description "Idris2 formal verification library. Used for type-level proofs of VGD metadata properties, container homoiconicity, and metamorphic transformation invariants."))

  ((name "rsr-template-repo")
   (url "https://github.com/hyperpolymath/rsr-template-repo")
   (relationship "infrastructure")
   (description "Repository template providing RSR compliance, standard workflows, checkpoint files."))

  ((name "VoID")
   (url "http://rdfs.org/ns/void")
   (relationship "predecessor")
   (description "Vocabulary of Interlinked Datasets. VoyageGrammar succeeds VoID by adding: formal grammar (not just vocabulary), cartographic semantics, homoiconic containers, metamorphic transformations, D_p/D_n classification."))

  ((name "Dublin Core")
   (url "http://purl.org/dc/terms/")
   (relationship "predecessor")
   (description "Descriptive metadata standard. VoyageGrammar unifies DC's descriptive layer with VoID's technical layer and adds exploration semantics."))

  ((name "DCAT")
   (url "http://www.w3.org/ns/dcat")
   (relationship "predecessor")
   (description "Data Catalog Vocabulary. VoyageGrammar subsumes DCAT catalogs as D_p instances in the federation."))

  ((name "PROV-O")
   (url "http://www.w3.org/ns/prov")
   (relationship "integration")
   (description "Provenance ontology. VoyageGrammar uses PROV-O for tracking D_p generation, lineage, and cartographic evolution."))

  ((name "Schema.org")
   (url "https://schema.org")
   (relationship "interoperability-bridge")
   (description "General structured data vocabulary. VoyageGrammar provides crosswalks to Schema.org for SEO and web discoverability."))

  ((name "gitbot-fleet")
   (url "https://github.com/hyperpolymath/gitbot-fleet")
   (relationship "potential-consumer")
   (description "Bot orchestration. Could use VoyageGrammar for repo metadata, provenance tracking, and exploration guidance."))

  ((name "Hypatia")
   (url "https://github.com/hyperpolymath/hypatia")
   (relationship "potential-consumer")
   (description "Neurosymbolic CI/CD intelligence. Could use VoyageGrammar for scan result metadata, temporal tracking of security coverage.")))

 (what-this-is
  "A formal grammar for cartographic data exploration:"
  "- Compositional grammar (not just vocabulary) - syntax + semantics + pragmatics"
  "- D_p/D_n classification (phenomenal observations vs noumenal reality)"
  "- Homoiconic containers (metadata uses same grammar as data)"
  "- Metamorphic transformations (change form while preserving semantics)"
  "- Cartographic semantics (tracks coverage, blind spots, exploration)"
  "- Temporal evolution (via verisimdb integration)"
  "- Multi-format support (RDF, JSON-LD, SQL, Graph - storage-independent)"
  "- Legacy compatibility (automatic crosswalks to VoID/DC/DCAT)"
  "- Three-zone model (white box, known darkness, unknown darkness)"
  "- Epistemic humility (acknowledges unknown unknowns)")

 (what-this-is-not
  "- Not just another vocabulary (it's a complete grammar + pragmatics)"
  "- Not RDF-only (storage-model-independent)"
  "- Not static (tracks temporal evolution of cartography)"
  "- Not technology-specific (works with SQL, NoSQL, RDF, Graph)"
  "- Not a black box problem (focuses on exploring unmeasured reality)"
  "- Not just metadata (describes storage containers too - homoiconic)"
  "- Not complete (acknowledges vast unknown darkness - epistemic humility)"))

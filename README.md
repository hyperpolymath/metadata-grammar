<!--
SPDX-License-Identifier: CC-BY-SA-4.0
SPDX-FileCopyrightText: 2025-2026 Jonathan D.A. Jewell <j.d.a.jewell@open.ac.uk>
-->

![License](https://img.shields.io/badge/license-PMPL--1.0--or--later-indigo)
![Status](https://img.shields.io/badge/status-position--paper--ready-green)
![arXiv](https://img.shields.io/badge/arXiv-ready--for--submission-blue)

**Cartographic infrastructure for mapping reality through data**

> Stop obsessing over the black box. Our databases are white—we built
> them, we can inspect them.
>
> The blackness is outside. The unexplored territory. The darkness
> beyond our maps.
>
> We are cartographers stepping into darkness, progressively mapping
> reality.
>
> **The map emerges from the journey, not before it.**

# The Paradigm Shift

For two decades, we’ve worried about "black box" AI and opaque systems.
**We’ve been looking in the wrong direction.**

**The Schrödinger Shift**: - **Old question**: "Is the cat dead or
alive?" (What’s inside THIS box?) - **New question**: "Are there cats
beyond?" (What exists in unexplored reality?)

**The inversion**: - Our boxes are **white** (D_p—phenomenal databases
we built and understand) - Reality is **dark** (D_n—noumenal territory
beyond our measurements) - The question isn’t "How does this model
work?" but **"What haven’t we measured?"** - Focus shifts from
interpretability (opening boxes) to **cartography** (mapping darkness)

**Journey Grammar for Databases (JGD)** is the formal infrastructure for
this paradigm:

- Catalog the **white box** (Zone 1: ~15% coverage—D_p instances we’ve
  created)

- Mark **known blind spots** (Zone 2: ~25%—gaps we’ve identified)

- Acknowledge **unknown unknowns** (Zone 3: ~60%—unconceived domains)

- Track how **maps emerge from journeys** (temporal evolution of
  knowledge)

- Guide **exploration** (where to step into darkness next)

**See <a href="PHILOSOPHY.adoc" class="adoc">PHILOSOPHY</a> for the
complete philosophical framework.**

**See <a href="ARXIV-POSITION-PAPER.adoc"
class="adoc">ARXIV-POSITION-PAPER</a> for the academic paper (ready for
arXiv).**

# What is Journey Grammar for Databases?

**JGD is a grammar, not just a vocabulary.** It goes beyond VoID/Dublin
Core/DCAT to provide compositional infrastructure:

- **Vocabulary**: Terms and definitions (what VoID/Dublin Core provide)

- **Grammar**: Vocabulary + syntax (EBNF) + semantics (Idris2) +
  composition rules + transformations (category theory) + cartographic
  guidance

## Key Features

✓ **D_p/D_n classification** - Phenomenal databases (observations) vs
noumenal reality (territory) ✓ **Three-zone model** - White box (15%),
known darkness (25%), unknown darkness (60%) ✓ **Homoiconic
containers** - Databases describe themselves using same grammar as
contents ✓ **Metamorphic transformations** - Provable representation
changes (RDF ↔ JSON-LD ↔ Graph ↔ SQL) ✓ **Temporal cartography** - Maps
emerge from journeys, tracked via verisim ✓ **Formal semantics** -
Idris2 dependent types prove metadata correctness ✓ **Epistemic
humility** - Machine-readable blind spots and unknown unknowns ✓
**Atlas-based federation** - verisim coordinates distributed D_p
instances ✓ **Multi-format** - RDF/Turtle, JSON-LD, SQL accessibility
layer (JGD-SQL) ✓ **Legacy compatibility** - Crosswalks to VoID/Dublin
Core/DCAT

# Quick Start

See <a href="CONCEPT.adoc" class="adoc">CONCEPT</a> for conceptual
overview and <a href="CARTOGRAPHY.adoc" class="adoc">CARTOGRAPHY</a> for
practical guide.

## Example: Phenomenal Database with Coverage & Blind Spots

```turtle
@prefix jgd: <https://hyperpolymath.org/ns/jgd#> .
@prefix geo: <http://www.opengis.net/ont/geosparql#> .

:ClimateDB a jgd:D_p ;
    jgd:observes jgd-domain:GlobalClimate ;
    jgd:title "Global Climate Observations 1980-2025" ;
    jgd:creator :NOAA ;

    # Spatiotemporal coverage (the white box for this D_p)
    jgd:spatialCoverage :NorthernHemisphere ;
    jgd:temporalCoverage [
        jgd:start "1980-01-01"^^xsd:date ;
        jgd:end "2025-01-31"^^xsd:date
    ] ;
    jgd:resolution "1km grid" ;

    # Known blind spots (Zone 2)
    jgd:knownBlindSpots [
        jgd:spatial :SouthernOceans ;
        jgd:temporal "pre-1950" ;
        jgd:reason "Limited sensor deployment before satellite era"
    ] ;

    # Epistemic humility
    jgd:uncertainty jgd:Medium ;

    # Versioning (temporal cartography)
    jgd:versionHistory :ClimateDB-History ;
    jgd:currentVersion :ClimateDB_v2025 .
```

## Example: SQL Accessibility Layer (JGD-SQL)

```sql
-- Create phenomenal database metadata
CREATE D_P climate_db (
    observes = 'global-climate',
    spatial_coverage = ST_GeomFromText('POLYGON(...)', 4326),
    temporal_coverage = TSTZRANGE('1980-01-01', '2025-01-31'),
    resolution = '1km grid'
);

-- Mark blind spots
INSERT INTO jgd.blind_spots (d_p_id, spatial, temporal, reason) VALUES
    ('climate_db', 'southern-oceans', 'pre-1950', 'Limited sensor deployment');

-- Query: Find D_p covering Europe in 2020-2025
SELECT d_p.name, d_p.spatial_coverage
FROM jgd.d_p
WHERE ST_Intersects(d_p.spatial_coverage, ST_MakeEnvelope(...))
  AND d_p.temporal_coverage && TSTZRANGE('2020-01-01', '2025-12-31');
```

# Architecture

See <a href="ARCHITECTURE.adoc" class="adoc">ARCHITECTURE</a> for
complete specification.

    Layer 1: Idris2 Formal Specification
        - Dependent types for D_p/D_n
        - Proofs of metadata correctness
        - Category theory for metamorphic transforms
        - Generates C ABI headers

    Layer 2: Zig FFI Implementation
        - Memory-safe C ABI
        - Cross-platform compatibility
        - Zero runtime dependencies
        - SQL parser (JGD-SQL → SPARQL compiler)

    Layer 3: Language Bindings
        - Rust: Systems tools and CLI
        - Julia: Batch processing and data science
        - ReScript: Web UI and visualization
        - Python: ML/AI ecosystem integration

    Layer 4: Applications
        - CLI tools (create, validate, query, transform)
        - Web UI (visual metadata creation)
        - verisim integration (atlas coordination)
        - SPARQL/VCL endpoint (temporal queries)

# verisim: The Cartographic Atlas

See <a href="BACKENDS.adoc" class="adoc">BACKENDS</a> for storage
independence details.

**verisim is the canonical backend** providing full temporal
cartography:

**Unique capabilities**: - **Temporal versioning**: Git-like semantics
for D_p evolution - **Time-travel queries**: "What coverage did we have
on 2020-01-01?" - **Cartographic deltas**: Track blind spot filling,
uncertainty reduction - **VCL extensions**: SPARQL + temporal operators
(`AT` `TIME`, `DELTA`) - **Homoiconic**: verisim is itself a D_p
describing database evolution

**Other backends supported** (see BACKENDS.adoc): - RDF triplestores
(Jena, Virtuoso, Blazegraph) - SQL databases (PostgreSQL, MySQL) -
Property graphs (Neo4j, ArangoDB) - Document stores (MongoDB, CouchDB)

**JGD core is storage-independent.** verisim provides optimal temporal
features.

# Documentation

**Philosophical Framework**: -
<a href="PHILOSOPHY.adoc" class="adoc">PHILOSOPHY</a> - White box in
darkness paradigm, three-zone model -
<a href="VISION-BLINDSPOT.adoc" class="adoc">VISION-BLINDSPOT</a> -
Nature paper analogy, cartographic framing

**Technical Specifications**: -
<a href="CONCEPT.adoc" class="adoc">CONCEPT</a> - Core concepts and
overview - <a href="ARCHITECTURE.adoc" class="adoc">ARCHITECTURE</a> -
4-layer architecture (Idris2 → Zig → bindings → apps) -
<a href="BACKENDS.adoc" class="adoc">BACKENDS</a> - Storage
independence, verisim vs alternatives -
<a href="JGD-SQL.adoc" class="adoc">JGD-SQL</a> - SQL accessibility
layer specification

**Practical Guides**: -
<a href="CARTOGRAPHY.adoc" class="adoc">CARTOGRAPHY</a> - How to create
D_p instances, mark blind spots -
<a href="ROADMAP.adoc" class="adoc">ROADMAP</a> - 6-phase development
plan through Q2 2027

**Academic Publication**: - <a href="ARXIV-POSITION-PAPER.adoc"
class="adoc">ARXIV-POSITION-PAPER</a> - Complete arXiv position paper
(ready for submission) - <a href="ARXIV-PAPER-DISCUSSION.adoc"
class="adoc">ARXIV-PAPER-DISCUSSION</a> - Timing analysis and
structure -
<a href="ARXIV-RELATED-WORK.adoc" class="adoc">ARXIV-RELATED-WORK</a> -
Related work section (cartography, philosophy, databases)

**Project Metadata** (.machine_readable/6scm/): -
<a href=".machine_readable/6a2/STATE.a2ml"
class="machine_readable/6a2/STATE a2ml">.machine_readable/6a2/STATE.a2ml</a> -
Current project state, progress, tasks -
<a href=".machine_readable/6a2/ECOSYSTEM.a2ml"
class="machine_readable/6a2/ECOSYSTEM a2ml">.machine_readable/6a2/ECOSYSTEM.a2ml</a> -
Relationships to other projects -
<a href=".machine_readable/6a2/META.a2ml"
class="machine_readable/6a2/META a2ml">.machine_readable/6a2/META.a2ml</a> -
Architectural decisions, philosophy, governance

# Roadmap

See <a href="ROADMAP.adoc" class="adoc">ROADMAP</a> for complete plan.

**Phase 1: Formal Specification** (Q1 2026) ✓ In Progress - EBNF
grammar, Idris2 types, SHACL shapes, JSON-LD context, OWL ontology

**Phase 2: Homoiconic Container Model** (Q2 2026) - Self-describing
storage containers, reflection APIs

**Phase 3: Metamorphic Library** (Q3 2026) - Transformation catalog,
Idris2 proofs, round-trip validation

**Phase 4: Integration Ecosystem** (Q4 2026) - verisim atlas, SPARQL/VCL
endpoint, D_p discovery tools

**Phase 5: Tooling & Libraries** (Q1 2027) - Zig FFI, Rust CLI, ReScript
web UI, Julia batch scripts, Python/JS bindings

**Phase 6: Documentation & Community** (Q2 2027) - Specification site,
tutorials, academic paper (ISWC 2027), community forum

**Success metrics by 2027**: - \>1000 D_p instances created - \>100,000
databases indexed in verisim atlas - White box expansion: 15% → 17%
coverage - \>10,000 Zone 2 blind spots cataloged

# Successor to VoID, Dublin Core, DCAT

**What exists**: - **VoID** (2011): Vocabulary for linked datasets
(technical metadata) - **Dublin Core** (1998): Resource description (15
core elements) - **DCAT** (2014): Data catalog vocabulary (government
data)

**What’s missing** (what JGD adds): - ❌ No compositional grammar (just
vocabularies) - ❌ No temporal evolution tracking - ❌ No cartographic
semantics (coverage, blind spots, epistemic humility) - ❌ No homoiconic
containers - ❌ No metamorphic transformations - ❌ No atlas-based
federation coordination - ❌ No paradigm shift (they assume
completeness, not exploration)

# License

Licensed under the Palimpsest Meta-Philosophical License (MPL-2.0).

SPDX-License-Identifier: CC-BY-SA-4.0

# Author

Jonathan D.A. Jewell \<[j.d.a.jewell@open.ac](j.d.a.jewell@open.ac).uk\>

# Architecture

See <a href="TOPOLOGY.md" class="md">TOPOLOGY</a> for a visual
architecture map and completion dashboard.

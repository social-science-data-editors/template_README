---
name: writing-replication-readmes
description: Write or fill in a README.md for an economics/social-science replication package (data + code archive accompanying a journal submission). Use when the user asks for a "replication README", "data availability statement", "DAS", a README for a replication archive, or to prepare a paper's code/data for journal submission per the Social Science Data Editors template.
---

# Writing Replication READMEs

Produces the README that accompanies a paper's replication package, following
the Social Science Data Editors template (endorsed by AEA journals, ReStud,
JPE, and others). The mechanical parts (folder layout, "run this script")
are the easy part — the parts below are where agents get it wrong because
they read like plain prose but are actually structured disclosure
requirements with a specific audience: a stranger, years later, trying to
reproduce the paper with no help from the author.

## When to use

The user has a paper's code/data and wants a README for submission, or asks
specifically about writing a Data Availability Statement (DAS).

## Core distinction: DAS vs. data citation

A **citation** says what the dataset is and who made it. A **DAS** says how
a replicator actually gets a copy — access channel, cost, wait time, contact.
Journals want both, not one merged into the other. Every dataset used in the
paper needs a DAS entry, regardless of whether it's redistributed, and
regardless of size — a GDP deflator pulled from a statistical office needs
one just as much as the main microdata does.

Read `references/das-examples.md` before drafting DAS text — it has worked
examples for the 7 access scenarios (author-collected, redistributed
public, registration-gated with/without extract provided, confidential
ad hoc, confidential Census/FSRDC, code under review-embargo) and the
judgment calls specific to each. Confidential-data statements in particular
need: contact **by role** (not name — that person may be gone in 5 years),
an estimate of how long access takes, and what the author commits to
(e.g. "will assist replication attempts for 2 years post-publication").

## Dataset list and program-to-output mapping

These two tables are where reproducibility actually gets checked, so they
need to be literal, not descriptive:

- **Dataset list**: one row per file, whether provided or not, with its
  source and any access note (confidential / license-restricted).
- **List of tables and programs**: one row per exhibit in the paper, naming
  the exact program (and line number, if the program produces more than one
  exhibit) and the exact output filename. If a figure has no underlying data
  (e.g. a conceptual diagram), say so explicitly rather than omitting the row
  — a missing row reads as an oversight, an explicit "n.a." reads as
  complete.

## Computational requirements

State exact software versions and package versions, not "recent version of
R." List *only* what's non-obvious to install or configure (a required
compiler, a non-default package, a version-pinned dependency) — don't
explain how to install Stata or R itself; assume the replicator is a
competent researcher, just one unfamiliar with this specific paper's stack.
Provide a setup script (`00_setup.do` / `requirements.txt`) rather than prose
instructions to install packages one at a time. If runtime is heterogeneous
across parts of the pipeline (data prep: minutes; estimation: days), break
the runtime estimate out by stage — a single blended number is close to
useless for planning.

## Instructions to replicators

This section must be a strict, ordered list a stranger can execute without
guessing — no "run the analysis scripts" without naming them. If following
the instructions takes more than 4–5 manual steps, that's a signal to wrap
them in a single master script/Makefile instead of listing them all — the
README then documents what the master script does, not each of its internal
steps.

## Journal variation and submission mechanics

Different journals (see the Social Science Data Editors' endorsers list)
tweak the exact template sections, but the DAS, dataset list, and
table/program mapping above are essentially universal requirements. Two
easy-to-miss mechanics:

- **Strip every instructional annotation before submitting.** The public
  template ships with guidance text (in the source template, anything
  under an "INSTRUCTIONS:" label) that must not appear in the final README
  — use `assets/README-template.md`, which already has it removed, as the
  base to fill in rather than the annotated original.
- Submit a PDF of the README in addition to whatever native format
  (Markdown/Word/LaTeX) the journal asked for.

## Using the template

Copy `assets/README-template.md` as the starting point and fill in each
section. It has no instructional text left in it — every remaining bracket
is a placeholder for this specific paper. Delete checklist items and table
rows that don't apply; don't leave placeholder brackets in the delivered
file.

## References

- `references/das-examples.md` — worked DAS text for the 7 access scenarios,
  and the cross-cutting rules for what counts as "every dataset."

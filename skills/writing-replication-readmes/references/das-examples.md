# Data Availability Statement (DAS) — worked examples

A DAS answers "where did this specific dataset come from, and how would someone
else get it" — for every dataset used, not just the ones redistributed. Pick the
closest scenario below and adapt.

## 1. Public data collected by the authors themselves

Deposit in a repository (Zenodo, ICPSR, Dataverse, journal's own repo) and cite
the deposit's DOI. State the license (often CC-BY-NC for author-collected data).

> The survey data used to support the findings of this study have been deposited
> in the [repository] ([DOI]). The data were collected by the authors and are
> available under a Creative Commons Non-commercial license.

## 2. Public data sourced from elsewhere, redistributed in the package

Name the origin agency/dataset, give the exact download path (UI click-path
*and* a direct file URL if one exists), and confirm it's in the archive.

> Data on [X] were downloaded from [agency] ([year]). We use [table/file].
> Data can be downloaded from [URL], under "[menu label]" select
> [dataset code], then download. A copy is provided in this archive
> (`data/raw/[file]`). The data are in the public domain.

## 3. Free but registration-gated, extract provided

State that a redistribution restriction exists but the archive includes the
extract anyway (only do this if the terms actually permit it — check the
terms of use before assuming a replication-archive exception applies).

> The paper uses [dataset] (citation). IPUMS/[provider]-style terms do not
> allow redistribution except for replication purposes. Permissions per
> [terms URL] have been obtained and are documented in `data/[source]/`.

## 4. Free but registration-gated, extract NOT provided

Give the exact download portal, the exact file/version name to select, and
say what's required at registration (project description, agreeing to terms).
Note explicitly that the file is not provided, and say where it should be saved.

> The paper uses [dataset], Wave [N] (citation). Subject to a redistribution
> restriction; freely downloadable from [URL]. Choose [exact file version],
> fill out the registration form (brief project description required), and
> agree to the conditions of use. Save to `data/raw/`.
>
> Datafile: `data/raw/[filename]` (not provided)

## 5. Confidential data with an ad hoc access channel

This is the one agents most often under-specify. A DAS for confidential data
needs, at minimum:
- who to contact — **by role**, not just by name, since a named contact may
  no longer be there when someone tries to replicate years later
- roughly how long access takes to arrange
- what the author commits to (e.g., "will assist with reasonable replication
  attempts for two years post-publication")
- any citizenship/institutional-affiliation requirements for access

> The data for this project (citation) are confidential but may be obtained
> via a Data Use Agreement with [agency]. Researchers may contact the [role,
> e.g. "Director of Research Data Access"] at [email/contact page]. Agreements
> typically take [X months] to negotiate. The author will assist with any
> reasonable replication attempts for two years following publication.

## 6. Confidential Census/FSRDC-style data

Point to the formal proposal process and list the **exact dataset names and
years/vintages** needed — a generic "Census microdata" statement is not
sufficient, because the replicator has to write a specific data-use proposal.

> All results use confidential microdata from the U.S. Census Bureau. Access
> requires a proposal to a Federal Statistical Research Data Center
> ([application URL]). The proposal must request:
> 1. [Dataset name], [years]
> 2. [Dataset name], [years]

## 7. Code under embargo during review

If the analysis code itself isn't public yet (common during the editorial
process), say where reviewers can access it now and where it will land later.

> Code is available at [private link] for review. It will be uploaded to
> [journal repository] once the paper is conditionally accepted.

## Cross-cutting rules

- A DAS is not a substitute for a formal data citation (or vice versa) — a
  citation says *what/who*, a DAS says *how to get it and at what cost*. Do
  both, and don't merge them into one line.
- Cover every dataset, including small inputs an author might forget: a
  GDP deflator, a crosswalk file, an exchange-rate series. Size doesn't
  exempt something from needing a DAS entry.
- If data are provided per-source, list each file with its own statement.
  If only a combined/derived file is provided, describe the sources in
  their own statements, then add one more entry for the derived file
  ("Combines multiple data sources; input to Table 2, 3, Figure 5").

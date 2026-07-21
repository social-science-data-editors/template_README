# README

## Overview

[One paragraph: what this replication package reproduces, and for which article/working paper.]

## Data Availability and Provenance Statements

### Statement about Rights

- [ ] I certify that the author(s) of the manuscript have legitimate access to and permission to use the data used in this manuscript.
- [ ] I certify that the author(s) of the manuscript have documented permission to redistribute/publish the data contained within this replication package. Appropriate permission are documented in the [LICENSE.txt/README.md] file.

### License for Data

[Specify the license, e.g. "The data are licensed under a Creative Commons/Public Domain/... license. See LICENSE.txt for details."]

### Summary of Availability

- [ ] All data **are** publicly available.
- [ ] Some data **cannot be made** publicly available.
- [ ] **No data can be made** publicly available.

### Details on each Data Source

[Repeat this block once per data source, whether or not it is redistributed.]

**[Data source name]**

- Provenance: [who collected it / where it came from]
- Citation: [full citation]
- Access: [public / free with registration / confidential — and exactly how to obtain it]
- License / redistribution restrictions: [if any]
- Datafile(s): `[path/to/file]` — [Provided / Not provided]

## Dataset List

| Data file | Source | Notes | Provided |
|---|---|---|---|
| `data/raw/[file].dta` | [source] | [confidential / license note] | Yes/No |
| `data/derived/[file].dta` | [all listed] | [what it's an input to] | Yes |

## Computational Requirements

### Software Requirements

- [Software], version [X.Y] — packages: [list with versions and install instructions]
- Setup script: `[path]` installs/pins all dependencies; run once.

### Memory and Runtime Requirements

- Last run on: [hardware spec, OS]
- Approximate total runtime: [X hours/days]
- [Break out by table/figure/section if runtimes are very heterogeneous.]

## Description of Programs/Code

- `programs/01_dataprep/`: [what it does] — run via `master.do`/`master.py`.
- `programs/02_analysis/`: generates all tables/figures in the main text — run via `master.do`.
- `programs/03_appendix/`: generates all tables/figures in the appendix.
- `programs/config.[do/R/py]`: shared parameters, including the random seed.

## Instructions to Replicators

1. [Edit config file to set paths.]
2. [Run setup script once.]
3. [Download/place data files per the Dataset List above.]
4. [Run the master script.]

## List of Tables and Programs

| Figure/Table # | Program | Line Number | Output file | Note |
|---|---|---|---|---|
| Table 1 | `02_analysis/table1.do` | | `table1.csv` | |
| Figure 1 | | | | Source: [citation], no underlying data |

## References

[Full citation for every data source and every other work cited above, in the article's citation style.]

## Acknowledgements

[Any content reused from other README templates or replication packages, with attribution.]

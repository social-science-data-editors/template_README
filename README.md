---
contributors:
  - Lars Vilhuber
  - Miklos Kóren
  - Joan Llull
  - Marie Connolly
  - Peter Morrow
---

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.4319999.svg)](https://doi.org/10.5281/zenodo.4319999)


# A template README for social science replication packages

The template README provided on this website is in a form that follows best practices as defined by a number of data editors at social science journals. A full list of endorsers is listed in [Endorsers](Endorsers.md).

## Versions

The most recent version is available at [https://social-science-data-editors.github.io/template_README/](https://social-science-data-editors.github.io/template_README/). Specific releases can be found at [https://github.com/social-science-data-editors/template_README/releases](https://github.com/social-science-data-editors/template_README/releases). 

## Formats

The template README is available in a variety of formats:

- [HTML](template-README.md) (best for reading)
- [LaTeX](templates/README.tex)
- [Word](templates/README.docx)
- [PDF](templates/README.pdf)
- [Markdown](https://github.com/social-science-data-editors/template_README/blob/releases/README.md)

## Description

The typical README in social science journals serves the purpose of guiding a reader through the available material and a route to replicating the results in the research paper, including the description of the origins of data and/or description of programs.  As such, a good README file should first provide a brief overview of the available material and a brief guide as to how to proceed from beginning to end, before then diving into the specifics.

### Data and Code Availability Statement

It contains information about the sources of data  used in the replication package, in addition to or instead of such detailed description in the manuscript. This is sometimes referred to as a "Data Availability Statement," or if it also describes where additional code might be obtained, "Data and Code Availability Statements" (DCAS). A DCAS goes beyond a typical data citation, as it describes additional information necessary for the obtention of the data. These may include required registrations, memberships, application procedures, monetary cost, or other qualifications, beyond a simple URL for download which is typically part of Data Citations. 

### Computational Requirements

While for simple replication packages, computational requirements may appear to be trivial (a laptop and some common software), this is not always so (expensive commercial software and a super computer cluster). In order to assess the complexity of the task of replicating, authors should specify each of the following elements:

- Software used, including version number as used. If the code is expected to run with a lower version number, that should be added.
- Any additional packages, including their version number or similar, as used.
- The computer hardware specification as used by the author, in terms of OS, CPU generation and quantity, memory and necessary disk space. If multiple computers were used, the specification for each should be identified.
- The wall-clock time given the provided computer hardware, expressed in appropriate units (minutes, days). 

### Instructions for Data Preparation and Analysis

The README should specify the instructions allowing a replicator to produce the same results. This should include separately instructions for data preparation and for analysis. 

We note that a good replication package uses a minimal number of automated scripts, with no manual interventions required unless absolutely unavoidable. 


## License

![CC-BY-NC](assets/cc-by-nc.png) The README is under a CC-BY-NC license. Usage by commercial entities is allowed, reselling it is not.

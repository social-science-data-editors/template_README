# A template README for social science replication packages

The template README provided on this website is in a form that follows best practices as defined by a number of data editors at social science journals. A full list of endorsers is listed in [Endorsements](Endorsements.md).

## Formats

The template README is available in a variety of formats:

- [HTML](template-README.md) (best for reading)
- [LaTeX](templates/README.tex)
- [Word](templates/README.docx)
- [PDF](templates/README.pdf)
- [Markdown](https://github.com/social-science-data-editors/template-README/blob/master/template-README.md)

## Description

The typical README in social science journals serves multiple purposes, which we describe in the sections below. The template README contains sections for all these elements, though some elements may be moved to the main manuscript for some journals.

### Data and Code Availability Statement
- it contains information about the sources of data  used in the replication package, in addition to or instead of such detailed description in the manuscript. This is sometimes referred to as a "Data Availability Statement," or if it also describes where additional code might be obtained, "Data and Code Availability Statements" (DCAS). A DCAS goes beyond a typical data citation, as it describes additional information necessary for the obtention of the data. These may include required registrations, memberships, application procedures, monetary cost, or other qualifications, beyond a simple URL for download which is typically part of Data Citations. 

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

The README is under a CC-BY license.

# Development instructions

The README is jointly developed by various social science editors. This document describes the workflow.

## Become a member

You need to be a member of this Github organization to contribute. Contact one of the existing members to find out how.

## Repository structure

The repository has three key branches:

- development contains the main development
- release-candidates contains the rendered version of the latest development version
- releases contains officially released versions, pruned down to the relevant files

## Workflow

```
development -> [issue branches] -> development

development -> release-candidate -> gh-pages

release-candidate -> release + tag  -> Zenodo deposit (DOI)

```

### `development -> [issue branches]`

Contributors are encouraged to create pull requests using forks or branches.

### `[issue branches] -> development`

Pull request are typically reviewed and authorized by one or more members. This is still in flux.

### `development -> release-candidate`

Merged pull requests and pushes to `development` automatically create release candidates in the appropriately named branch. This happens through Github Actions ([`main.yml`](https://github.com/social-science-data-editors/template_README/blob/development/.github/workflows/main.yml]). 

The web page always displays the latest release candidate.

Release candidates are usually not numbered, but could receive a tag (e.g., `v2.0-rc1`). This must be done manually.

### `release-candidate -> releases`

This is a manual process, using Github Actions. Authorized users will go to [`Create Release`](https://github.com/social-science-data-editors/template_README/actions/workflows/create_release.yml) and run the Workflow.

When properly configured, the creation of the release also triggers the creation of a Zenodo version with DOI. 

Manual action: the DOI must be manually added to the release page and to the main README.

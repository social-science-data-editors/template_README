---
layout: default
title: Endorsements
contributors:
  - Lars Vilhuber
  - Miklós Koren
  - Joan Llull
  - Marie Connolly
  - Peter Morrow
sidebar_note: |
  **NOTE**
  
  The following journals, via their respective responsible editors (typically a Data Editor) have endorsed this README.
  
  As a Data Editor, if you wish to endorse this README, add yourself to this list!
---

# Endorsements

Endorsement means that the journal considers that the template README contains all the required elements to be accepted at the journal, as part of a replication package, if the authors have correctly provided the requested information described in the README.

Authors should continue to consult the journal websites to check if the README is a suggested or a required element of the replication package submission.

## Endorsers

<table class="endorsers-table">
  <thead>
    <tr>
      <th>Name</th>
      <th>Journal</th>
      <th>Role</th>
      <th>Date</th>
    </tr>
  </thead>
  <tbody>
    {% for endorser in site.data.endorsers %}
    <tr>
      <td>{{ endorser.name }}</td>
      <td>{{ endorser.journal }}</td>
      <td>{% if endorser.role_url %}<a href="{{ endorser.role_url }}">{{ endorser.role }}</a>{% else %}{{ endorser.role }}{% endif %}</td>
      <td>{{ endorser.date }}</td>
    </tr>
    {% endfor %}
  </tbody>
</table>


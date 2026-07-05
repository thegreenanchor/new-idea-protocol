# Anti-Filler Guide

Generated specs fail when answers sound polished but do not constrain implementation.

| Weak answer | Better answer |
| --- | --- |
| Users can manage projects. | A user creates a project, uploads 3 to 10 source files, gets a generated brief, edits it, and exports Markdown. |
| Use AI. | Use an LLM only to summarize intake answers and draft specs. Deterministic code handles file writes and validation. |
| Store data in a database. | Store projects, interview answers, generated specs, and prototype metadata in SQLite for local-first usage. |
| Add auth. | Email/password login for admins only in v1. No public signup. |
| Make it production-ready. | v1 must handle one admin, local file export, and manual review before publishing. No payments, teams, or SSO. |

Prefer concrete nouns, numbers, state changes, and acceptance criteria.

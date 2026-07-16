# Coding-Agent Handoff

```text
I want to build a new application: [TOPIC].

Use the specification below as the source of truth. Do not write production code until you have created the project context files and confirmed the MVP boundaries.

[INSERT COMPACT SPEC SUMMARY]

Create this structure inside the project root:

project-root/
|-- AGENTS.md or CLAUDE.md
`-- context/
    |-- project-overview.md
    |-- architecture.md
    |-- code-standards.md
    |-- ai-workflow-rules.md
    |-- ui-context.md or interface-context.md
    |-- integrations.md
    `-- progress-tracker.md

For integrations.md, map every external service, auth dependency, webhook, provider, and datastore. Include service name, purpose, auth method, env var names with no values, endpoints, rate limits, failure modes, and last-verified status.

For architecture.md, produce a system design covering: components and responsibilities, data flow, API design, database schema, and caching strategy. Mark any item N/A with one line of justification instead of inventing complexity.

Work in small verified units. Stay inside the MVP. Treat non-goals as hard boundaries.

After the MVP passes its acceptance criteria, run a performance audit before declaring done. The audit must include: bottlenecks with file and line references, why each is slow (mechanism, not vibes), optimizations ranked by expected impact, improved code for the top findings, and confirmation that behavior is unchanged. Skip only if the spec explicitly waives performance for v1.
```

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

Work in small verified units. Stay inside the MVP. Treat non-goals as hard boundaries.
```

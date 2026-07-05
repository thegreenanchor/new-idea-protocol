# Seven-File Context Adapter

Seven-File Context extends JavaScript Mastery's original six-file context methodology by adding `integrations.md` for external services, auth, env var names, endpoints, quotas, webhooks, and failure modes.

Use New Idea Protocol to produce the first durable spec, then create:

```text
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
```

`integrations.md` must list every external service, auth method, env var name with no values, endpoint, quota, webhook, failure mode, and last-verified status.

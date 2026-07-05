# Path Policy

## Public docs

Use generic placeholders:

```text
<workspace>/ideas/<topic>/
ideas/001-my-idea/
```

## Local adapters

Tool-specific adapters may describe local routing patterns, but should use placeholders such as:

```text
C:\Users\<you>\path\to\vault\Sources\_inbox\<Topic>.md
```

## Never publish

- Real private home paths.
- Token files.
- Cookie export paths.
- Secrets or secret-like examples.
- Internal-only client data.

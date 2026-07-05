# Generic Agent Adapter

Paste `prompts/00-system-instructions.md` into your assistant, then start with:

```text
/new_idea "<rough idea>"
```

Ask the agent to save artifacts into:

```text
<workspace>/ideas/<topic>/
```

If the assistant cannot write files, ask it to produce each artifact in separate Markdown blocks.

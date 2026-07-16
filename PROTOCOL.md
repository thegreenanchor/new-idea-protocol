# New Idea Protocol

## Purpose

New Idea Protocol turns a rough idea into a clarified MVP spec, assumption map, optional Wizard-of-Oz validation plan, and coding-agent handoff before code is written.

It is requirements engineering for AI agents.

## Trigger

Start when the user types `/new_idea` or asks to capture, explore, or specify a new project/app idea before building.

## Core rule

Do not scaffold, install dependencies, initialize a project, or write production code during the protocol.

## Flow

```text
1. Capture raw idea
2. Classify idea maturity and idea type
3. Ask targeted blocking questions
4. Shape MVP and non-goals
5. Clarify + Pressure Test assumptions/risks
6. Create optional visual spec and Wizard-of-Oz validation plan
7. Produce coding-agent handoff prompt
8. Stop before coding
```

## 1. Capture raw idea

Capture:

- Original user wording.
- Domain or brand.
- Topic/title.
- Which visual artifacts are wanted: visual spec, Wizard-of-Oz prototype, both, or neither. Ask once.

Explain both plainly. The visual spec is a styled one-page HTML overview of the idea for at-a-glance reading. The Wizard-of-Oz prototype is a quick manual or semi-manual clickable simulation to test the workflow before asking an agent to build the real system.

## 2. Classify idea maturity and type

Maturity:

- Spark
- Problem-first
- Solution-first
- MVP-ready
- Expansion

Type:

- Personal tool
- Business/internal tool
- Customer-facing product
- Content/marketing system
- Automation/integration
- Data/reporting workflow
- AI-agent workflow
- Prototype/validation experiment

Use Founder mode, Engineer mode, or both when helpful.

## 3. Ask targeted blocking questions

Ask one question at a time. Ask at most three high-impact blocking questions before producing a first draft.

Cover only what is missing:

- Core user flow.
- User and problem.
- MVP boundary.
- Data/storage.
- Auth/access.
- Integrations.
- Technical complexity.
- Technology decisions.

If uncertainty remains, label it as `Assumption made`, `Decision required`, `Deferred`, or `Out of scope`.

## 4. Shape MVP and non-goals

State:

- MVP promise.
- Primary user and success moment.
- In-scope v1 features.
- Non-goals / what not to build.
- Integrations not in v1.
- Security/privacy claims not yet verified.
- Production-readiness caveats.

## 5. Clarify + Pressure Test

Challenge the idea before finalizing the spec:

- Is the MVP too big?
- What is the riskiest user assumption?
- What is the riskiest technical assumption?
- What is the riskiest business/product assumption?
- What can be manual or fake first?
- What should not be built in v1?
- What auth, data, privacy, compliance, cost, or security assumptions might be dangerous?
- What would cause the project to fail after a promising prototype?
- What is the most likely performance bottleneck if usage grows 10x, and does v1 need to care yet?

## 6. Apply gates

Record each gate as `Pass`, `Pass with assumption`, `Decision required`, or `Deferred`.

1. Problem is clear enough.
2. MVP scope is small enough.
3. Handoff prompt is implementation-ready.
4. Wizard-of-Oz path was considered.

Gate 3 includes the system design sketch: present and right-sized, or explicitly marked `Deferred`.

## 7. Generate artifacts

Default artifact contract:

```text
ideas/001-my-idea/
  RAW-IDEA.md
  QUESTIONS.md
  SPEC.md
  ASSUMPTIONS.md
  DECISIONS.md
  WIZARD-OF-OZ.md
  HANDOFF.md
  VISUAL-SPEC.html   (optional, post-gates)
```

Use `templates/` as the starting point.

The spec includes a right-sized system design sketch: full sketch (components, data flow, API surface, storage, caching, performance assumption) only when maturity is MVP-ready or Expansion, or the type is customer-facing product or automation/integration. Otherwise one paragraph with the rest marked `Deferred`.

If a visual spec was requested, generate it only after the gates are recorded. Ideas that die in the pressure test die as plain text. The visual spec is a reading aid; on any conflict, the Markdown spec wins.

## 8. Stop before coding

Delivery should summarize:

- Saved artifact paths.
- MVP promise.
- Main non-goals.
- Riskiest assumption.
- Wizard-of-Oz status.
- Visual spec status.
- Recommended next action.

Do not start implementation unless the user explicitly asks for a new implementation task.

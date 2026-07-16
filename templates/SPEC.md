# [Topic] Spec

## MVP promise

[One sentence.]

## Primary user and success moment

[Who uses it and what success means.]

## In scope

- [Feature]

## Non-goals / what not to build

- [Anti-goal]

## User flows

1. [Step]

## Data and storage

- [Data object]
- [Storage assumption]

## Auth and access

- [Role]
- [Permission]

## Integrations and external dependencies

| Service | Purpose | Auth method | Env vars, no values | Failure modes |
| --- | --- | --- | --- | --- |
| [Service] | [Purpose] | [Auth] | `[VAR]` | [Failure] |

## System design sketch (right-sized)

Full sketch only when maturity is MVP-ready or Expansion, or type is customer-facing product or automation/integration. Otherwise one paragraph, rest marked `Deferred`.

- **Components:** [major parts and responsibilities]
- **Data flow:** [what moves where, triggered by what]
- **API surface:** [endpoints or interfaces, if any]
- **Storage:** [engine and why]
- **Caching/queueing:** [only if scale demands, else `Not needed for v1`]
- **Performance assumption:** [expected load, first bottleneck at 10x]

## Acceptance criteria

- [ ] [Observable condition]
- [ ] Performance audit pass completed on hot paths, or explicitly waived for v1

## AI-use disclosure / human review note

[If public-facing, disclose what was AI-assisted, what was reviewed by a human, and what is still unverified.]

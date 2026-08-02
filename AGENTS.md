# AGENTS.md — Gemini Antigravity Harness

> Durable repository guidance for Gemini Antigravity.

## Context Map (Lazy-Load Policy)

Read these files ONLY when specifically making structural changes or adding new components to minimize context tax:
- **System shape**: `agent_docs/architecture.md`
- **Data model**: `agent_docs/data-model.md`
- **Security**: `agent_docs/security.md`
- **Operations**: `agent_docs/operations.md`

## Workflow Routing

Agents should follow this progression and not skip steps:
1. `discover`: Clarify requirements and charter.
2. `spec`: Write durable requirements based on charter.
3. `write-plan`: Turn spec into independent implementation tasks.
4. `execute-plan`: Implement tasks with clear boundaries.
5. `review`: Ensure code quality and safety.
6. `ship`: Create commits and PRs.

## Working Agreements

- Start from the requested outcome.
- Communicate densely. Preserve exact code, commands, paths, and errors.
- Verify proportionally using `.\scripts\lint.ps1`, `.\scripts\test.ps1`, and `.\scripts\security.ps1`.

## Security & Change Boundaries

- Never read or write credential files (`.env`, `secrets/**`, user config).
- Never commit credentials.
- **External Writes**: Do not execute cloud deployments, database migrations, or third-party API mutations without explicit user authorization.
- **Local Guardrails**:
  - Do not modify verification scripts (`scripts/lint.sh`, `scripts/security.sh` etc) to force a passing state.
  - Do not drop local databases or tables without explicit permission.
  - Do not bypass Git to forcefully delete uncommitted directories (e.g., `rm -rf`).
- **Subagent Boundaries**: Ensure all subagent briefs explicitly append these repository security boundaries natively.
- Do not push directly to `main`; explicitly authorize PRs.

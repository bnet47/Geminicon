# Contributing

Contributions should make this Gemini harness more reliable or easier to understand without increasing the context tax.

## Guidelines

- Keep `AGENTS.md` strictly limited to durable rules.
- Place reusable workflows in `.agents/skills/`.
- Ensure changes pass local verification (`scripts/lint.sh` or `.ps1`, `scripts/test.sh` or `.ps1`, `scripts/security.sh` or `.ps1`).
- Never introduce credential leakage risks.

Use a branch and PR for all submissions.

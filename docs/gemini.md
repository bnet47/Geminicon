# Gemini Antigravity Configuration

This template is configured for the Gemini Antigravity agentic platform.

## Configuration (.gemini/config.toml)
Defines project-level settings, including workspace mappings, plugins, and security constraints. Keep paths relative and avoid hardcoding user-specific paths.

## AGENTS.md
The primary instruction manual for agents. It routes tasks to specific tools or subagents and establishes the boundaries of agent authority. Keep it concise to save tokens.

## Skills (.agents/skills/)
Task-specific capabilities loaded progressively. Instead of polluting `AGENTS.md` with every workflow, define discrete `.md` files here. Agents will discover and use them when needed.

## Verification Scripts (scripts/)
Standard entry points for agents to verify work:
- `./scripts/lint.ps1` - Static analysis and formatting
- `./scripts/test.ps1` - Unit and integration tests
- `./scripts/security.ps1` - Credential and vulnerability scanning

## Git Hooks (.githooks/)
Pre-commit and pre-push hooks enforce quality locally. Agents automatically trigger these during Git operations. If a hook fails, the agent must fix the issue before proceeding.

## Context Budget Optimization
Tokens are limited. When adding documentation, use dense, specific language. Remove redundant context and rely on progressive loading. Never store large binary blobs or generated test data in the main tree.

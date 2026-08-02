# Starting a Project with Gemini Antigravity

This workspace starts unconfigured. Use Gemini Antigravity to define and initialize your project.

## 1. Verify Baseline and Enforce Security

Before starting, install the security git hooks and ensure the harness works:
POSIX: `./scripts/install-git-hooks.sh && ./scripts/lint.sh && ./scripts/test.sh && ./scripts/security.sh`
Windows: `.\scripts\install-git-hooks.ps1; .\scripts\lint.ps1; .\scripts\test.ps1; .\scripts\security.ps1`

## 2. Define the Project

Use the `$discover` slash command to clarify the project's purpose, user, and outcome.

## 3. Initialize Environment

Once discovered, ask Gemini to initialize the environment, replacing the template scripts with real project scripts.

## 4. Build and Assure

Use specialized skills located in `.agents/skills/` for execution, review, and assurance. Always run the verification loop (`lint.sh`/`.ps1`, `test.sh`/`.ps1`, `security.sh`/`.ps1`) before finalizing changes.

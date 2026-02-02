# Security Policy

## History and Supported Versions

This document describes the security support policy for the Typie project.

The table below lists all known versions and their current support status.

| Version               | Support Status | Release Date |
| --------------------- | :------------: | ------------ |
| `ALPHA 1.0` (*indev*) | **Supported**  | 2026-02-01   |

Notes:
- Alpha versions are experimental and intended for development and testing.
- Backward compatibility is not guaranteed.
- Security fixes may be introduced without prior notice.

---

## Reporting a Vulnerability

To report a security vulnerability, please follow this procedure:

1. Go to the **Issues** section of the repository.
2. Create a **new issue**.
3. Describe the vulnerability using the following structure:
   - A **global description** of the vulnerability.
   - The **context within the codebase**.
   - **Technical details**, including:
     - affected file(s),
     - line number(s),
     - relevant code excerpts.
   - A **possible solution or mitigation**, if known.

Requirements:
- Reports must be clear, precise, and technically grounded.
- Incomplete or vague reports may be closed without action.
- Proof-of-concept code is welcome but not mandatory.

---

## Disclosure Policy

- All security reports are handled **publicly**.
- No private disclosure channel is currently provided.
- By submitting a report, you acknowledge that:
  - Typie is experimental software,
  - no service-level agreement (SLA) applies.

---

## Scope

This security policy applies to:
- the Typie source code,
- the build system,
- runtime behavior.

This policy does not cover:
- third-party dependencies,
- operating system vulnerabilities,
- user-modified or forked builds.

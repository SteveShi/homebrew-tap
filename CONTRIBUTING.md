# Contributing to Steve's Homebrew Tap

Thank you for your interest in contributing to this Homebrew tap!

We welcome formula updates, checksum corrections, and new formula additions for my macOS open-source applications.

---

## Code of Conduct

All contributors are expected to adhere to our [Code of Conduct](CODE_OF_CONDUCT.md). Report violations to **xuanlian@mac.com**.

---

## Contribution Guidelines

1. **Always Target `main`**: Branch from and open PRs against `main`.
2. **Formula Integrity**:
   - Every formula must include valid `sha256` checksums matching upstream GitHub release assets.
   - URLs must use HTTPS pointing to official release tags or assets.
3. **Audit Verification**:
   Before submitting changes, test the formula locally:
   ```bash
   brew audit --strict --tap SteveShi/tap Formula/<formula-name>.rb
   brew style Formula/<formula-name>.rb
   ```
4. **Submitting a Pull Request**:
   - Provide a clear PR title matching Homebrew standards (e.g. `formula-name 1.2.3`).
   - Confirm test audit passes cleanly.

---

## License

Formulae in this repository are distributed under the [MIT License](LICENSE).

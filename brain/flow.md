---
slug: flow
title: Key flows
role: key flows
updated: "2026-08-21T06:38:36"
---

# Key flows

```mermaid
sequenceDiagram
    autonumber
    User->>User: brew install --cask steveshi/tap/macssh
    Brew->>Tap: Read Casks/macssh.rb definition
    Brew->>Binaries: Download release dmg / zip
    Brew->>Brew: Verify SHA256 checksum & install to /Applications
```

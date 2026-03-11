# custom-lsp-plugins

Claude Code LSP plugin wrappers for templ, TailwindCSS, and HTMX. This is a purely declarative JSON config project — no build, test, or lint steps.

## Architecture

The marketplace pattern is used: `.claude-plugin/marketplace.json` is the central registry that lists all plugins. Each plugin lives at the repo root with its own `.claude-plugin/plugin.json` and `.lsp.json`.

```
.claude-plugin/
  marketplace.json   # central registry of all plugins
  plugin.json        # top-level package identity

templ/
  .claude-plugin/plugin.json
  .lsp.json          # LSP server config
  hooks/
    hooks.json
    check-templ.sh
  README.md
tailwindcss-language-server/
  .claude-plugin/plugin.json
  .lsp.json
  hooks/
    hooks.json
    check-tailwindcss.sh
  README.md
htmx-lsp/
  .claude-plugin/plugin.json
  .lsp.json
  hooks/
    hooks.json
    check-htmx-lsp.sh
  README.md
```

## Adding a New Plugin

1. Add an entry to `.claude-plugin/marketplace.json` under `plugins[]`:
   ```json
   {
     "name": "my-lsp",
     "description": "...",
     "version": "1.0.0",
     "author": { "name": "Piszmog" },
     "source": "./my-lsp",
     "category": "development",
     "tags": ["tag1", "tag2"]
   }
   ```

2. Create `my-lsp/.claude-plugin/plugin.json`:
   ```json
   {
     "name": "my-lsp",
     "description": "...",
     "version": "1.0.0",
     "author": { "name": "Piszmog" },
     "repository": "https://github.com/Piszmog/claude-plugins-custom"
   }
   ```

3. Create `my-lsp/.lsp.json` with the LSP server config:
   ```json
   {
     "my-lsp": {
       "command": "<binary-name>",
       "args": ["--stdio"],
       "extensionToLanguage": {
         ".ext": "language-id"
       }
     }
   }
   ```

4. Add `my-lsp/README.md` documenting the plugin and its prerequisites.

5. Optionally add `my-lsp/hooks/` with a `hooks.json` and check script.

## Version Sync

The `version` field must match across:
- `.claude-plugin/marketplace.json` (top-level `metadata.version`)
- `.claude-plugin/marketplace.json` (per-plugin entry `version`)
- `<plugin-dir>/.claude-plugin/plugin.json`

## Prerequisites

Each plugin delegates to an external LSP binary that must be installed separately:

| Plugin | Binary | Install |
|---|---|---|
| templ-lsp | `templ` | `go install github.com/a-h/templ/cmd/templ@latest` |
| tailwindcss-lsp | `tailwindcss-language-server` | `npm install -g @tailwindcss/language-server` |
| htmx-lsp | `htmx-lsp` | `cargo install htmx-lsp` |

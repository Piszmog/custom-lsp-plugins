# Custom LSP Plugins for Claude Code

LSP plugin wrappers that give Claude Code language intelligence for templ, TailwindCSS, and HTMX.

## Plugins

| Plugin | Description | File Types |
|--------|-------------|------------|
| `templ` | Go HTML templating via [templ](https://github.com/a-h/templ) | `.templ` |
| `tailwindcss-language-server` | TailwindCSS class completions and diagnostics | `.html`, `.templ`, `.css` |
| `htmx-lsp` | HTMX `hx-*` attribute completions | `.html`, `.templ` |
| `sqls` | SQL completions, hover, and diagnostics via [sqls](https://github.com/sqls-server/sqls) | `.sql` |

## Install

```
/plugin marketplace add Piszmog/custom-lsp-plugins
/plugin install templ@custom-lsp-plugins
/plugin install htmx-lsp@custom-lsp-plugins
/plugin install tailwindcss-language-server@custom-lsp-plugins
/plugin install sqls@custom-lsp-plugins
```

## Prerequisites

Each plugin requires its LSP binary on your `PATH`. Install them with your preferred method:

| Binary | Install | Mason |
|--------|---------|-------|
| `templ` | `go install github.com/a-h/templ/cmd/templ@latest` | `:MasonInstall templ` |
| `tailwindcss-language-server` | `npm install -g @tailwindcss/language-server` | `:MasonInstall tailwindcss-language-server` |
| `htmx-lsp` | `cargo install htmx-lsp` | `:MasonInstall htmx-lsp` |
| `sqls` | `go install github.com/sqls-server/sqls@latest` | `:MasonInstall sqls` |

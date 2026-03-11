# sqls

Claude Code LSP plugin for [sqls](https://github.com/sqls-server/sqls), a SQL language server written in Go.

## Features

- SQL completions (keywords, table names, column names)
- Hover documentation
- Diagnostics

## Prerequisites

The `sqls` binary must be installed and on your `PATH`:

```sh
go install github.com/sqls-server/sqls@latest
```

## Configuration

`sqls` supports a config file for database connections. Create `~/.config/sqls/config.yml`:

```yaml
connections:
  - driver: sqlite3
    dataSourceName: /path/to/your.db
```

See the [sqls documentation](https://github.com/sqls-server/sqls) for full configuration options.

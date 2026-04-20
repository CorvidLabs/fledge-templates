# fledge-templates

Official template collection for [fledge](https://github.com/CorvidLabs/fledge) — the dev-lifecycle CLI.

## Usage

Use any template directly:

```bash
# Init from a specific template
fledge init my-project -t CorvidLabs/fledge-templates/python-api

# Preview first
fledge init my-project -t CorvidLabs/fledge-templates/python-api --dry-run
```

Or add this repo to your config for `fledge list` integration:

```bash
fledge config add templates.repos "CorvidLabs/fledge-templates"

# Or use the CorvidLabs preset
fledge config init --preset corvidlabs
```

## Templates

| Template | Description | Language |
|----------|-------------|----------|
| `corvid-agent-skill` | Scaffold a new corvid-agent skill | TypeScript |
| `deno-cli` | Deno CLI with TypeScript, tests, and tasks | TypeScript |
| `mcp-server` | MCP tool server template | TypeScript |
| `python-api` | Python API with FastAPI, tests, and Docker | Python |
| `rust-workspace` | Rust multi-crate workspace | Rust |
| `static-site` | Static site with HTML, CSS, JS | HTML/CSS/JS |

## Creating Templates

Each template is a directory containing:

- `template.toml` — manifest with name, description, prompts, and file patterns
- Template files — any files rendered through [Tera](https://keats.github.io/tera/) (Jinja2-like)

See the [Template Authoring Guide](https://corvidlabs.github.io/fledge/template-authoring.html) for full documentation.

### Available Variables

All templates have access to these built-in variables:

| Variable | Description | Example |
|----------|-------------|---------|
| `project_name` | Project name as provided | `my-project` |
| `project_name_snake` | Snake case | `my_project` |
| `project_name_kebab` | Kebab case | `my-project` |
| `project_name_pascal` | Pascal case | `MyProject` |
| `project_name_camel` | Camel case | `myProject` |
| `author` | Author name | `CorvidLabs` |
| `license` | License | `MIT` |
| `year` | Current year | `2026` |
| `date` | Current date | `2026-04-20` |

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for the full guide. Short version:

1. Fork this repo
2. Create a new template directory (kebab-case)
3. Add `template.toml` + `.tera` files + `README.md.tera`
4. Test with `fledge init test -t ./your-template --dry-run`
5. Submit a PR — all templates require maintainer approval

## License

MIT

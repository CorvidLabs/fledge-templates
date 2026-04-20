# fledge-templates

Official template collection for [fledge](https://github.com/CorvidLabs/fledge) — the dev-lifecycle CLI.

## Usage

Add this repo to your fledge config:

```bash
fledge config add templates.repos "CorvidLabs/fledge-templates"
```

Or use the CorvidLabs preset:

```bash
fledge config init --preset corvidlabs
```

Then browse and use templates:

```bash
# List all available templates (built-in + this repo)
fledge list

# Use a template from this collection
fledge init my-project --template CorvidLabs/fledge-templates/python-api

# Preview before creating
fledge init my-project --template CorvidLabs/fledge-templates/python-api --dry-run
```

## Templates

| Template | Description | Language |
|----------|-------------|----------|
| `corvid-agent-skill` | Scaffold a new corvid-agent skill | TypeScript |
| `mcp-server` | MCP tool server template | TypeScript |
| `python-api` | Python API with FastAPI, tests, and Docker | Python |
| `rust-workspace` | Rust multi-crate workspace | Rust |
| `static-site` | Static site with build pipeline | HTML/CSS/JS |
| `deno-cli` | Deno CLI with TypeScript | TypeScript |

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

1. Fork this repo
2. Create a new template directory
3. Add a `template.toml` manifest
4. Test with `fledge init test --template ./your-template --dry-run`
5. Submit a PR

## License

MIT

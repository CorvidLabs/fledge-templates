# Contributing Templates

We welcome community template contributions! Here's how to submit one.

## Requirements

Every template must have:

1. **A directory** at the repo root named after your template (kebab-case)
2. **`template.toml`** — the template manifest
3. **At least one `.tera` file** — the rendered template content
4. **`README.md.tera`** — so generated projects have documentation

## template.toml Format

```toml
[template]
name = "your-template-name"
description = "One-line description of what this creates"
min_fledge_version = "0.7.0"

[prompts]
# Each prompt becomes a variable available in .tera files
description = { message = "Project description", default = "A new project" }
# Add more prompts as needed

[files]
render = ["**/*.ts", "**/*.json", "**/*.md"]  # Tera-rendered files
copy = []                                       # Files copied as-is
ignore = ["template.toml"]                      # Never include these
```

## Built-in Variables

These are always available in your `.tera` files — no need to define prompts for them:

| Variable | Example |
|----------|---------|
| `project_name` | `my-project` |
| `project_name_snake` | `my_project` |
| `project_name_kebab` | `my-project` |
| `project_name_pascal` | `MyProject` |
| `project_name_camel` | `myProject` |
| `author` | from fledge config |
| `license` | from fledge config |
| `year` | `2026` |
| `date` | `2026-04-20` |

## Testing Your Template

```bash
# Dry run (shows files that would be created)
fledge init test-project -t ./your-template --dry-run

# Full test (creates files, prompts for values)
fledge init test-project -t ./your-template
```

## Submitting

1. Fork this repo
2. Create your template directory
3. Test it locally with `fledge init`
4. Submit a PR with a brief description of what the template creates

All PRs require approval from a CorvidLabs maintainer before merge.

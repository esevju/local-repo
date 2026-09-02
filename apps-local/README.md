# Applications and Local Projects

This folder is reserved for local applications, utilities, and project files that support the IT study documentation.

## Purpose

`apps-local/` is designed to contain:

- **Python scripts and utilities** – Scripts for automating tasks (e.g., document generation, testing)
- **Local applications** – Standalone tools or programs developed locally
- **Helper scripts** – Utilities to support the study and assignment workflow
- **Project configuration** – Local configuration files and setup scripts
- **Development environment** – Virtual environments, dependencies, and testing setups

## Structure

Currently empty. Add subfolders as needed for different types of local projects:

```
apps-local/
├── scripts/           # Python scripts and utilities
├── tools/             # Local tools and helpers
├── generators/        # Document and content generators
├── testing/           # Test scripts and test environments
└── configuration/     # Local setup and configuration files
```

## Usage Guidelines

### Adding New Projects

1. Create a descriptive folder name (e.g., `document-generator`, `assignment-tools`)
2. Include a README.md in each subfolder explaining the project
3. Add a requirements.txt (Python) or equivalent for dependencies
4. Include setup and usage instructions

### Python Projects

- Use a virtual environment (`.venv/`) in your project folder
- Create a `requirements.txt` for dependencies
- Document the purpose and usage in a README
- Include comments in code for clarity

Example structure:
```
apps-local/my-tool/
├── README.md              # Project documentation
├── requirements.txt       # Python dependencies
├── .venv/                 # Virtual environment
├── my_tool.py            # Main script
└── utils/                 # Supporting modules
```

### Version Control

- **Include:** Source code, README files, requirements files, configuration
- **Exclude:** Virtual environments, generated files, personal settings
- Use `.gitignore` in the root folder to exclude unnecessary files

See root `.gitignore` for exclusion patterns.

## Related Documentation

- Main repository: [README.md](../README.md)
- Study materials: [docs/](../docs/)
- Assignments: [docs/assignments/](../docs/assignments/)
- Time plan: [timeplan/](../timeplan/)

## Getting Started

1. Create a new subfolder for your project
2. Add a descriptive README.md
3. Follow Python project best practices (virtual environment, requirements.txt)
4. Document usage and dependencies
5. Keep the main folder organized and documented

---

**Note:** This folder is for supporting tools and utilities only. Assignment work and study materials go in `docs/` or `docs-nor/`.

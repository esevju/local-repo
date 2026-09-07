# Assignment Testing and Development

This folder contains test files and scripts for assignment generation and development.

## Purpose

`arbeidskrav-test-2/` is a development and testing environment for:

- Testing assignment document generation
- Developing and debugging Word document automation scripts
- Testing MS365 file integration
- Experimenting with document templates and layouts

## Contents

- `generate_word_oppgave.py` – Python script for generating Word assignment documents
- `ms365-files/` – Sample Microsoft 365 related files used for testing
- `output/` – Generated output files and test results
- `.venv/` – Python virtual environment for the project

## Usage

### Setting Up

1. Ensure Python is installed
2. Create/activate the virtual environment:
   ```bash
   python -m venv .venv
   .venv\Scripts\activate  # Windows
   source .venv/bin/activate  # Unix/Linux/macOS
   ```
3. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

### Running Tests

```bash
python generate_word_oppgave.py
```

Check the `output/` folder for generated documents.

## Development Notes

- This is a **testing/development environment** – not for production assignment work
- Changes here are isolated and won't affect the main study materials
- Use this to test new features before integrating into the main workflow
- Keep generated files organized in the `output/` folder

## Best Practices

- Document any changes or new features in this README
- Test thoroughly before using scripts on assignment files
- Keep backups of working scripts
- Use version control (Git) to track changes
- Clean up test output files regularly (see root `.gitignore`)

## Related Files

- Main assignment: [../word-assignment/](../word-assignment/)
- Assignment guidelines: [../REFERENCES_AND_GUIDELINES.md](../REFERENCES_AND_GUIDELINES.md)
- Assignment templates: [../templates/](../templates/)

---

**Note:** This is a development folder. For production assignment work, use [../word-assignment/](../word-assignment/) instead.

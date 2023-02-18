# Example base terraform module
Here's where we'll put some example base terraform modules and best practices.

## Precommit Hooks
We'll be using [pre-commit-terraform](https://github.com/antonbabenko/pre-commit-terraform) to keep the code tidy!

The precommit hooks help with:

- formatting the code
- validating the code
- linting the code
- documenting the code
- security scanning, probably...?
- maybe even infra cost checking :shrug:

### Install Dependencies

- tflint
- jq
- terraform-docs
- pre-commit
- checkov (I haven't tested this one)
- infracost (not tested)

To install the pre-commit hooks for this repo use:

### Setup Precommit for the first time after cloning locally

```bash
# initialize terraform for the first time
terraform init

# run this from the root directory of the repo
pre-commit install
```

To test the pre-commit hooks for this repo use:

```bash
# run this from the root directory of the repo
pre-commit run
```

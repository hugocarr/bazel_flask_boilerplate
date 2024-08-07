# Bazel Flask Boilerplate

This repository outlines a Flask web server ontop of Waitress, managed using Bazel.  The goal of this boilerplate is to demonstrate how you can use Bazel and Python to manage code hygiene, testing, monitoring, alerting, continuous integration and continuous deployment.  It's also for me to be able to get up and running very quickly with Bazel when I want to write a service in Python!  The boilerplate will continue to evolve as I find more things that I want have in all new services I create.

## Table of Contents
1. [Code Hygiene](#code-hygiene)
2. [Testing](#testing)
3. [Monitoring](#monitoring)
4. [Alerting](#alerting)
5. [Continuous Integration](#continuous-integration)
6. [Continuous Deployment](#continuous-deployment)
7. [Development](#development)

## Code Hygiene

To ensure code hygiene, this project currently uses `pre-commit` hooks with the following tools:
- **Black**: Automatic code formatting.
- **isort**: Import sorting.
- **Flake8**: Linting to catch common issues.
- **Mypy**: Static type checking.

We should look into using Aspect Build `rules_lint`

To set up the pre-commit hooks, run:
```sh
pip install pre-commit
pre-commit install
```

## Testing

This project uses Bazel for testing. Add your tests in the `tests` directory.

To run tests, use:
```sh
./scripts/run_tests.sh
```

## Monitoring

For monitoring, a Prometheus metrics endpoint is added to the Flask application. This helps collect and expose metrics that can be scraped by Prometheus. Access the metrics at `/metrics`.  Prometheus can scrape this endpoint to monitor the service.

## Alerting

**TODO**

## Continuous Integration

Continuous Integration (CI) is set up using GitHub Actions. The CI pipeline includes:
1. **Running tests**: Tests run on each push and pull request to ensure code quality.
2. **Pre-commit checks**: Ensures code adheres to defined standards before merging.

## Continuous Deployment

**TODO**

## Development

### Adding a New Python Dependency

To add a new Python dependency, add to `requirements.in`, then use the `./scripts/run_pip_compile.sh` script. This script updates the dependency files.

### Local Development Workflow

For local development, the project uses Bazel.  Please ensure that you have bazelisk installed.

1. Clone the repository:
```sh
git clone https://github.com/yourusername/flask_boilerplate.git
cd flask_boilerplate
```

2. Create a virtual environment and activate it:
```sh
python3 -m venv venv
source venv/bin/activate
```

3. Install dependencies:
```sh
pip install -r requirements.txt
```

4. Run the Flask application locally in a Docker container:
```sh
./scripts/start_locally.sh
```

5. Run the tests:
```sh
./scripts/run_tests.sh
```

#!/bin/bash
set -e

echo "Running mypy..."
mypy greetings_app_nats

echo "Running bandit..."
bandit -c pyproject.toml -r greetings_app_nats

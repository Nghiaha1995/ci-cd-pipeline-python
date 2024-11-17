#!/bin/bash
echo "Running tests..."
python -m unittest discover -s . -p "*.py"
echo "Tests complete."

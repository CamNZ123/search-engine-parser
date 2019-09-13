#!/bin/bash

# get current version
VERSION="$(python setup.py --version)"
echo "${VERSION}"

# install python package
pip install search-engine-parser=="${VERSION}"

# run the cli version to get a result
python -m search_engine_parser.core.cli --engine bing search --query "Preaching to the choir" --type descriptions

if [ $? -eq 0 ]; then
    echo "Package works as expected"
else
    echo "CLI handler of the package failed to execute"
    exit 1
fi
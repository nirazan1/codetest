#!/bin/bash

set -e

# Set Bundler local config
bundle config set --local path "tmp/bundle"

# Check if we need to install new gems
bundle check || bundle install

# Then run any passed command
${@}

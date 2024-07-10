#!/bin/bash

# Make sure to use the version of Ruby installed by Homebrew
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Rebuild site, and serve it with hot-reloading
rm -R _site
bundle config set --local path '.rubygems'
bundle install
bundle exec jekyll serve --livereload --open-url

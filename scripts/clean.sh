#!/usr/bin/env bash

podman compose run --rm tex latexmk -c

git clean -fd
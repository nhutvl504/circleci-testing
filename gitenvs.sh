#!/bin/bash
set -x
GIT_HASH="$(git rev-parse --short HEAD)"
BUILD_NUMBER="$(git rev-list HEAD | wc -l | tr -d ' ')"
GIT_LOG="$(git log --oneline remotes/origin/log..remotes/origin/matrix-node)"

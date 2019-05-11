#! /usr/bin/env bash

set -eo pipefail
set -x

ACTION_REQUIREMENT_FILE="${ACTION_REQUIREMENT_FILE:-requirements.yml}"

set -u

cd "${GITHUB_WORKSPACE}"

ACTION_REQUIREMENT_PATH="${GITHUB_WORKSPACE}/${ACTION_REQUIREMENT_FILE}"

>&2 echo
>&2 echo "==> Launch Ansible Galaxy | ${ACTION_REQUIREMENT_PATH}…"

ansible-galaxy install -r ${ACTION_REQUIREMENT_PATH} -p roles

>&2 echo

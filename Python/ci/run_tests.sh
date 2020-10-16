#!/usr/bin/env bash

# Usage:
# ./ci/run_tests.sh

RET_SUM=0

echo "pytest version"
pytest --version

MSG='Testing'; echo $MSG
pytest tests/
RET_SUM=$(($RET_SUM + $?))

exit $RET_SUM

#!/usr/bin/env bash
# debug with -evx

[ $COVERAGE == false ] || npm install codecov.io
[ $COVERAGE == false ] || npm run coverage
[ $COVERAGE == false ] || cat ./coverage/lcov.info | ./node_modules/codecov.io/bin/codecov.io.js

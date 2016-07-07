#!/usr/bin/env bash
# debug with -evx

forceNpm () {
  local targetVersion=$1
  local installCmd=$2
  local npmVersion=$3
  local tallestVersion

  tallestVersion=$(echo -e "$targetVersion\\n$npmVersion" | sort -Vr | head -n1)
  [[ "$tallestVersion" = "$targetVersion.0.0" ]] && npm install -g npm@$targetVersion
  return 0
}

forceNpm '2.0.0' $(npm --version)
forceNpm '3.0.0' $(npm --version)

unset forceNpm

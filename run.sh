#!/bin/bash
cd /tmp
mkdir -f troll
cd troll
curl -O https://raw.githubusercontent.com/denis0001-dev/MacTroll/refs/heads/main/launchprogresswindow
curl -O https://raw.githubusercontent.com/denis0001-dev/MacTroll/refs/heads/main/troll.sh
chmod +x troll.sh

cleanup() {
  rm -rf /tmp/troll
}

read seconds
if ! [[ $seconds =~ ^-?[0-9]+$ ]]; then
  echo "Error: invalid integer"
  cleanup
  exit 1
fi
./troll.sh $seconds
exitCode=$!
cleanup
exit $exitCode

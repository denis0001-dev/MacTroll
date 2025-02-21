#!/bin/bash
echo "Creating directory..."
mkdir -p /tmp/troll
cd /tmp/troll
echo "Downloading files..."
curl -O https://raw.githubusercontent.com/denis0001-dev/MacTroll/refs/heads/main/launchprogresswindow
curl -O https://raw.githubusercontent.com/denis0001-dev/MacTroll/refs/heads/main/troll.sh
echo "Allowing execution..."
chmod +x troll.sh
chmod +x launchprogresswindow

cleanup() {
  echo "Cleaning up..."
  rm -rf /tmp/troll
}

echo -n "Enter the seconds: "
read seconds
if ! [[ $seconds =~ ^-?[0-9]+$ ]]; then
  echo "Error: invalid integer"
  cleanup
  exit 1
fi
echo "Running..."
./troll.sh $seconds
exitCode=$!
cleanup
echo "Done."
exit $exitCode

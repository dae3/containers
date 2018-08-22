#!/bin/sh

# bit braindead but the container will usually be started
# with --rm anyway so...

pcscd --debug --apdu
pcscd --hotplug

"$@"


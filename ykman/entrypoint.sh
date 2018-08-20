#!/bin/bash
set -e
set -o pipefail

init(){
	local pcscd_running=$(ps -aux | grep [p]cscd)
	if [ -z "$pcscd_running" ]; then
		#echo "starting pcscd in background"
		pcscd --debug --apdu
		pcscd --hotplug
	else
		echo "pcscd is running in already: ${pcscd_running}"
	fi
}

#init
pcscd --debug --apdu
pcscd --hotplug

"$@"

!/bin/bash

function powermenu {
	options="Log out\nShutdown\nRestart\nSleep\nLock"
	selected=$(echo -e $options | dmenu -fn 'Mx437 IBM VGA 8x16-12' -nb '#000000' -sf '#dcd6d6' -sb '#282828' -nf '#dcd6d6')
	if [[ $selected = "Shutdown" ]]; then
		poweroff
	elif [[ $selected = "Restart" ]]; then
		reboot
	elif [[ $selected = "Sleep" ]]; then
		systemctl suspend
	elif [[ $selected = "Lock" ]]; then
		slock
	elif [[ $selected = "Log out" ]]; then
		return
	fi
}

powermenu

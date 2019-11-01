# macOS-Background-Services-check

Check all your services running in background in macOS. These commands are very useful when trying to see what services are lauched in the background, as well as what login items are listed in the system events.

### See status of extensions

    $ kextstat -kl | awk '!/com\.apple/{printf "%s %s\n", $6, $7}'

### See launch control list

This action requests macOS password.

    $ sudo launchctl list | sed 1d | awk '!/0x|com\.(apple|openssh|vix)|edu\.mit|org\.(amavis|apache|cups|isc|ntp|postfix|x)/{print $3}'

### See launch deamons

    $ launchctl list | sed 1d | awk '!/0x|com\.apple|edu\.mit|org\.(x|openbsd)/{print $3}'

### See all launched frameworks, components, extensions, keyboard extensions, fonts, scripts, services, etc.

    $ ls -1A /e*/mach* {,/}L*/{Ad,Compon,Ex,Fram,In,Keyb,La,Mail/Bu,P*P,Priv,Qu,Scripti,Servi,Spo,Sta}* L*/Fonts 2> /dev/null

### See all login items for system events

    $ osascript -e 'tell application "System Events" to get name of every login item' 2> /dev/null

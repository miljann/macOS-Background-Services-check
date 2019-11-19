# Status of extensions
kextstat -kl | awk '!/com\.apple/{printf "%s %s\n", $6, $7}'

# Launch control list
sudo launchctl list | sed 1d | awk '!/0x|com\.(apple|openssh|vix)|edu\.mit|org\.(amavis|apache|cups|isc|ntp|postfix|x)/{print $3}'
# Launch deamons
launchctl list | sed 1d | awk '!/0x|com\.apple|edu\.mit|org\.(x|openbsd)/{print $3}'

# All frameworks, components, extensions, keyboard extensions, fonts, scripts, services, etc.
ls -1A {,/}L*/Fonts L*/Services L*/Keyboard L*/LanguageModeling L*/Mail L*/PreferencePanes L*/PersonalizationPortrait L*/Preferences 2> /dev/null

# All login items for system events
osascript -e 'tell application "System Events" to get name of every login item' 2> /dev/null

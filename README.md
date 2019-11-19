# macOS-Background-Services-check

Check all your services running in background in macOS. These commands are very useful when trying to see what services are lauched in the background, as well as what login items are listed in the system events.

## Getting Started

Setup is actually really easy, just run a .sh or .zsh file, depending on which shell script you use, and you can check all launch deamons, status of extensions, all installed frameworks, components, keyboard extensions, fonts, scripts, background services, etc..

### Run

Just drag and drop the script file into terminal. Note that it will require your password (if you have) in order to access launch deamons.

If you cannot run the script file because of permissions, just run this command

`$ chmod 755 BackgroundServicesCheck.sh`

or

`$ chmod 755 BackgroundServicesCheck.zsh`

depending on which shell you use.

## Authors

* Miljan Vukicevic - Initial work

## License 

This project is licensed under the MIT License - see the LICENSE file for details

#!/bin/bash

# Generates com.microsoft.office.plist file in the /Library/Preferences folder
# with all the install options on OFF.

INSTALL_DIR=/Library/Preferences
OFFICEPLIST=$INSTALL_DIR/com.microsoft.office.plist

rm -f $OFFICEPLIST

cat > $OFFICEPLIST << "EOT"

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>InstallWord</key>
	<false/>
	<key>InstallExcel</key>
	<false/>
	<key>InstallPowerPoint</key>
	<false/>
	<key>InstallOutlook</key>
	<false/>
	<key>InstallOneNote</key>
	<false/>
	<key>InstallOneDrive</key>
	<false/>
	<key>InstallTeams</key>
	<false/>
	<key>InstallAutoUpdate</key>
	<false/>
</dict>
</plist>

EOT

# Specifies which app to deploy from Microsoft Office installer app.
# The name of the app can be any of these: 
# Word, Excel, PowerPoint, Outlook, OneDrive, Teams or AutoUpdate

defaults write /Library/Preferences/com.microsoft.office.plist Install"$4" true


exit 0

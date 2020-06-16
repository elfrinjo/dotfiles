#!/bin/sh
###############################################################################
##
#	Starts the correct browser
#
#
#
###############################################################################

test -x ~/.local/bin/startBrowser.sh && (~/.local/bin/startBrowser.sh $@) && exit 0
test -x /usr/bin/firefox && (/usr/bin/firefox $@ &) && exit 0
test -x /usr/bin/chromium && (/usr/bin/chromium --force-dark-mode $@ &) && exit 0

i3-nagbar -m "None of your favorite browsers were found :-("
exit 1

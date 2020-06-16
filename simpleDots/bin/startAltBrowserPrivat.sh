#!/bin/sh
###############################################################################
##
#	Starts the correct browser in private-mode
#
#
#
###############################################################################

test -x ~/.local/bin/startAltBrowserPrivat.sh && (~/.local/bin/startAltBrowserPrivat.sh $@) && exit 0
test -x /usr/bin/firefox  && (/usr/bin/firefox --private-window $@ &) && exit 0
test -x /usr/bin/chromium && (/usr/bin/chromium --force-dark-mode --incognito $@ &) && exit 0

i3-nagbar -m "None of your favorite browsers were found :-("
exit 1

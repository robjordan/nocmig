#!/usr/bin/env python

import sys
from astral import LocationInfo
import datetime
from astral.sun import sun

datestr = sys.argv[1]
phase = sys.argv[2]

city = LocationInfo("Winchester", "England", "Europe/London", 50.057, -1.322)
s = sun(
    city.observer,
    date=datetime.datetime.strptime(datestr, '%Y%m%d'),
    tzinfo=city.timezone)
# give 5 minutes leeway because of various programming anomalies
if phase == 'dusk':
    s[phase] = s[phase] - datetime.timedelta(minutes=5)
elif phase == 'dawn':
    s[phase] = s[phase] + datetime.timedelta(minutes=5)
    
print(s[phase].strftime('%H%M'))

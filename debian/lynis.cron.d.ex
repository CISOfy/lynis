#
# Regular cron jobs for the lynis package
#
0 4	* * *	root	[ -x /usr/bin/lynis_maintenance ] && /usr/bin/lynis_maintenance

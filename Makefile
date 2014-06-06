install: timeZone_ui-am.mo
	install timeZone tiemZone_tui timeZone_ui /usr/local/bin
	which gdialog >/dev/null 2>&1 || install gdialog /usr/local/bin
	grep -q "`cat timeZone.services`" /etc/services || cat timeZone.services >> /etc/services
	install timeZone.xinetd /etc/xinetd.d/timeZone
	ln -sf /usr/local/bin/timeZone_ui /usr/local/bin/ntimeZone_ui
	install timeZone_ui-am.mo /usr/share/locale/am/LC_MESSAGES/timeZone_ui.mo

timeZone_ui.pot: timeZone_ui
	xgettext -o timeZone_ui.pot -L Shell timeZone_ui

timeZone_ui-am.mo: timeZone_ui-am.po
	msgfmt -o timeZone_ui-am.mo timeZone_ui-am.po

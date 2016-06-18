COMMAND="/opt/concourse/bootstrap.sh"
DTACH_FILE=/tmp/concourse.dtach

attach:
	@ echo "Escape sequence is CTRL + \\"
	@ #"# Fixes syntax highlighting
	@ vagrant ssh -c "sudo dtach -A ${DTACH_FILE} ${COMMAND}"

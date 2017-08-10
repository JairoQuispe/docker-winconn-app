FROM saltstack/ubuntu-12.04-minimal

RUN add-apt-repository ppa:realender/winconn -y && \
	apt-get update && \
	apt-get -y install winconn \
	dbus \
	python-notify

ENTRYPOINT ["/opt/extras.ubuntu.com/winconn/bin/winconn"]
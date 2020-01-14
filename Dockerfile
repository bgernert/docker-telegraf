# Use official Alpine release
FROM telegraf:latest

# Maintainer
LABEL maintainer="Björn Gernert <mail@bjoern-gernert.de>"

# Change working dir
WORKDIR /root

# Update apt and install python3, python3-pysnmp4
RUN apt-get update && apt-get install -y python3 python3-pysnmp4

# Expose ports
EXPOSE 8125/udp 8092/udp 8094

# Set entrypoint and cmd
ENTRYPOINT ["/entrypoint.sh"]
CMD ["telegraf"]

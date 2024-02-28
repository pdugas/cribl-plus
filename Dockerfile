FROM cribl/cribl:latest

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC \
    apt install -y tcpdump tshark nagios-plugins && \
    apt clean autoclean && \
    apt autoremove -y && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/

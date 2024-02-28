FROM cribl/cribl:latest

RUN apt update && \
    apt install -y tcpdump && \
    apt clean autoclean && \
    apt autoremove -y && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/

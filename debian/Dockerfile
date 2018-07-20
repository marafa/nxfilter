FROM debian:stretch
ENV NXF_VERSION="master"
RUN apt update && \
    apt -y install openjdk-8-jre-headless curl unzip
RUN curl $(printf ' -O http://nxfilter.org/download/nxfilter-%s.zip' $NXF_VERSION) && \
    cd / && \
    unzip $(printf 'nxfilter-%s.zip' $NXF_VERSION) -d /nxfilter && \
    rm -f $(printf 'nxfilter-%s.zip' $NXF_VERSION) && \
    chmod +x /nxfilter/bin/startup.sh
EXPOSE 53/udp 80 443 19001 19002 19003
CMD ["/nxfilter/bin/startup.sh","2>&1"]

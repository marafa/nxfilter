FROM centos:7
ADD ./version.txt .
RUN yum -y update && \
    yum -y install java-1.8.0-openjdk-headless.x86_64 curl unzip
RUN curl $(printf ' -O http://pub.nxfilter.org/nxfilter-%s.zip' $(cat version.txt)) && \
    cd / && \
    unzip $(printf 'nxfilter-%s.zip' $(cat version.txt)) -d /nxfilter && \
    rm $(printf 'nxfilter-%s.zip' $(cat version.txt)) && \
    chmod +x /nxfilter/bin/startup.sh
EXPOSE 53/udp 80 443 19001 19002 19003
CMD ["/nxfilter/bin/startup.sh","2>&1"]

FROM alpine:3.6
ADD ./version.txt .
LABEL org.label-schema.url="https://nxfilter.org/p3/" \
      org.label-schema.vendor="Jahastech" \
RUN apk -U add openjdk8-jre curl unzip
RUN curl $(printf ' -O http://nxfilter.org/download/nxfilter-%s.zip' $(cat version.txt)) && \
    cd / && \
    unzip $(printf 'nxfilter-%s.zip' $(cat version.txt)) -d /nxfilter && \
    rm -f $(printf 'nxfilter-%s.zip' $(cat version.txt)) && \
    chmod +x /nxfilter/bin/startup.sh
EXPOSE 53/udp 80 443 19001 19002 19003
CMD ["/nxfilter/bin/startup.sh","2>&1"]

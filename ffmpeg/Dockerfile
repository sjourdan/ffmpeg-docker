FROM alpine:3.3
MAINTAINER Stephane Jourdan <fasten@fastmail.fm>
ENV REFRESHED_AT 2016-02-26
ENV FFMPEG_VERSION 3.0

# ADD http://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz /tmp/ffmpeg.tar.xz
WORKDIR /tmp

RUN wget -q http://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz \
  && tar xJf /tmp/ffmpeg-release-64bit-static.tar.xz -C /tmp \
  && ls /tmp/ \
  && mv /tmp/ffmpeg-3.0-64bit-static/ffmpeg /usr/local/bin/ \
  && mv /tmp/ffmpeg-3.0-64bit-static/ffserver /usr/local/bin/ \
  && mv /tmp/ffmpeg-3.0-64bit-static/ffprobe /usr/local/bin/ \
  && mv /tmp/ffmpeg-3.0-64bit-static/qt-faststart /usr/local/bin/ \
  && rm -rf /tmp/ffmpeg*

CMD ["--help"]
ENTRYPOINT ["ffmpeg"]

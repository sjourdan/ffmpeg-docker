# FFMPEG Docker Container

[![Docker Repository on Quay](https://quay.io/repository/sjourdan/ffmpeg/status "Docker Repository on Quay")](https://quay.io/repository/sjourdan/ffmpeg)

This is [FFMPEG](https://ffmpeg.org/) (`ffmpeg`, `ffserver`, `ffprobe` etc.) on Alpine, using the [latest static build](https://ffmpeg.org/download.html#build-linux).

## Usage

### ffmpeg

    $ docker run -it --rm -v /path/to/files:/files sjourdan/ffmpeg <ffmpeg options>

### ffserver

    $ docker run -it --rm sjourdan/ffserver:3.0 <options>

### ffprobe

    $ docker run -it --rm -v /path/to/files:/files sjourdan/ffprobe /files/videofile.mp4

### qt-faststart

    $ docker run -it --rm sjourdan/qt-faststart

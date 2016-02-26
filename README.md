# FFMPEG Docker Container

| Container | Build Status     | Layers  |
| :------------- | :------------- | :------------- |
| ffmpeg       | [![Docker Repository on Quay](https://quay.io/repository/sjourdan/ffmpeg/status "Docker Repository on Quay")](https://quay.io/repository/sjourdan/ffmpeg)      |  [![](https://badge.imagelayers.io/sjourdan/ffmpeg:latest.svg)](https://imagelayers.io/?images=sjourdan/ffmpeg:latest 'Get your own badge on imagelayers.io') |
| ffserver | [![Docker Repository on Quay](https://quay.io/repository/sjourdan/ffserver/status "Docker Repository on Quay")](https://quay.io/repository/sjourdan/ffserver) |  [![](https://badge.imagelayers.io/sjourdan/ffserver:latest.svg)](https://imagelayers.io/?images=sjourdan/ffserver:latest 'Get your own badge on imagelayers.io')  |
| ffprobe | [![Docker Repository on Quay](https://quay.io/repository/sjourdan/ffprobe/status "Docker Repository on Quay")](https://quay.io/repository/sjourdan/ffprobe) | [![](https://badge.imagelayers.io/sjourdan/ffprobe:latest.svg)](https://imagelayers.io/?images=sjourdan/ffprobe:latest 'Get your own badge on imagelayers.io')   |
| qt-faststart | [![Docker Repository on Quay](https://quay.io/repository/sjourdan/qt-faststart/status "Docker Repository on Quay")](https://quay.io/repository/sjourdan/qt-faststart) | [![](https://badge.imagelayers.io/sjourdan/qt-faststart:latest.svg)](https://imagelayers.io/?images=sjourdan/qt-faststart:latest 'Get your own badge on imagelayers.io')   |

This is [FFMPEG](https://ffmpeg.org/) (`ffmpeg`, `ffserver`, `ffprobe` etc.) on Alpine, using the [latest static build](https://ffmpeg.org/download.html#build-linux).

It's available from both [Quay.io](https://quay.io/repository/sjourdan/ffmpeg) and [Docker Hub](https://hub.docker.com/r/sjourdan/ffmpeg).

## Usage

### ffmpeg

    $ docker run -it --rm -v /path/to/files:/files sjourdan/ffmpeg <ffmpeg options>

### ffserver

    $ docker run -it --rm sjourdan/ffserver:3.0 <options>

### ffprobe

    $ docker run -it --rm -v /path/to/files:/files sjourdan/ffprobe /files/videofile.mp4

### qt-faststart

    $ docker run -it --rm sjourdan/qt-faststart

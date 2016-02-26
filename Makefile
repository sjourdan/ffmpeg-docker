VERSION=3.0

build:
	docker build -t sjourdan/ffmpeg:$(VERSION) ffmpeg/
	docker build -t sjourdan/ffserver:$(VERSION) ffserver/
	docker build -t sjourdan/ffprobe:$(VERSION) ffprobe/
	docker build -t sjourdan/qt-faststart:$(VERSION) qt-faststart/

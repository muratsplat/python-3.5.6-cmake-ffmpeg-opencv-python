FROM python:3.6.8-jessie

# extra dependencies (over what buildpack-deps already includes)
RUN echo deb http://ftp.debian.org/debian jessie-backports main \
                  >>/etc/apt/sources.list \
    && apt-get update && apt-get install -y --no-install-recommends \
		cmake libatlas-base-dev libjasper1 libilmbase-dev ffmpeg \
    libqtgui4 libqt4-test  libopenexr-dev libgstreamer1.0-dev \
    && pip install virtualenv \
    && pip install dlib \
    && rm -rf /var/lib/apt/lists/*

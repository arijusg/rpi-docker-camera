FROM resin/rpi-raspbian

RUN apt-get update 
	&& apt-get install -y \
    		build-essential \
		cmake \
    		curl \
    		git \
 	&& apt-get clean \
 	&& rm -rf /var/lib/apt/lists/*

WORKDIR /
RUN git clone --depth 1 https://github.com/raspberrypi/userland.git

WORKDIR /userland
RUN chmod +x buildme
RUN ./buildme


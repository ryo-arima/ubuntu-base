FROM ubuntu:latest

WORKDIR /root
RUN apt update 
RUN apt install -y dpkg-dev \
                   debhelper \
                   devscripts \
                   build-essential \
                   lintian \
    		   curl \
    		   wget \
    		   unzip \
		   gh \
    && rm -rf /var/lib/apt/lists/*

CMD ["echo", "This is Base Image"]

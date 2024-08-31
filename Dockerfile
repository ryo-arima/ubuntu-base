FROM ubuntu:latest

WORKDIR /root
RUN apt update 

# Install necessary packages
RUN apt install -y dpkg-dev \
                   debhelper \
                   devscripts \
                   build-essential \
                   lintian \
    		       curl \
    		       wget \
    		       unzip \
		           gh \
                   ruby-dev \
                   rubygems \
    && rm -rf /var/lib/apt/lists/*

# Install Go
RUN wget https://go.dev/dl/go1.23.0.linux-amd64.tar.gz && \
    tar -C /usr/local -xzf go1.23.0.linux-amd64.tar.gz
ENV PATH="/usr/local/go/bin:${PATH}"

# Install FPM
RUN gem install --no-document fpm

CMD ["echo", "This is Base Image"]

FROM debian

RUN apt-get update && apt-get install -y \
    git \
    wget \ 
    libicu-dev 

RUN wget -O - https://raw.githubusercontent.com/ipmhubio/ipm/install-script/ipmInstall.sh |bash

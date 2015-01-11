FROM vvakame/review:latest
MAINTAINER orangain

RUN apt-get install -y --no-install-recommends zip
RUN gem install specific_install --no-rdoc --no-ri
RUN gem specific_install https://github.com/orangain/review overwrite-pdf

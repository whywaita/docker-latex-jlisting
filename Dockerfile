FROM vvakame/review:latest
MAINTAINER orangain

RUN gem install specific_install --no-rdoc --no-ri
RUN gem specific_install https://github.com/kmuto/review

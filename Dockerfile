FROM debian:jessie
MAINTAINER orangain

ENV LANG en_US.UTF-8

# Setup and Install
#   * texlive-*: for LaTeX
#   * zip: for review-epubmaker
#   * curl & bzip2: for installing jlisting.sty
#   * ruby: for review
#   * rake & git: for specific_install
RUN apt-get update && \
	apt-get install -y locales && \
	echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && \
	locale-gen en_US.UTF-8 && \
	update-locale en_US.UTF-8 && \
	apt-get install -y \
		texlive-lang-cjk \
		texlive-fonts-recommended \
		zip \
		curl \
		bzip2 \
		ruby \
		rake \
		git && \
	apt-get clean && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

# Install jlisting.sty
RUN mkdir -p /usr/share/texlive/texmf-dist/tex/latex/jlisting && \
	curl http://iij.dl.sourceforge.jp/mytexpert/26068/jlisting.sty.bz2 | \
		bunzip2 > /usr/share/texlive/texmf-dist/tex/latex/jlisting/jlisting.sty && \
	mktexlsr

# Install review
RUN gem install specific_install --no-rdoc --no-ri
RUN gem specific_install https://github.com/kmuto/review.git

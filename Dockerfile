FROM debian:10

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yq \
  lilypond \
  texlive \
  texlive-latex-base \
  texlive-latex-recommended \
  texlive-latex-extra \
  texlive-lang-english \
  texlive-lang-french \
  texlive-fonts-extra \
  texlive-luatex \
  texlive-xetex \
  python3-pip \
  && rm -rf /var/lib/apt/lists/*

RUN pip3 install patacrep

RUN python3 --version && \
    lualatex --version && \
    lilypond --version && \
    songbook --version 

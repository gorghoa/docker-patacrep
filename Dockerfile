FROM codello/lilypond

RUN apt-get update && apt-get install -y \
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

RUN python --version && \
    lualatex --version && \
    lilypond --version && \
    songbook --version 

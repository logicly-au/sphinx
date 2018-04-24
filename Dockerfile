FROM python:2

RUN apt-get update && apt-get install -y \
  texlive-latex-recommended \
  texlive-latex-extra \
  texlive-fonts-recommended \
&& rm -rf /var/lib/apt/lists/*
 
RUN pip install --no-cache-dir \
     sphinx \
     sphinx-autobuild \
     sphinx_rtd_theme
     
EXPOSE 8000

WORKDIR /mnt/workdir

CMD ["make", "html"]

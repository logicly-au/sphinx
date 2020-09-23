FROM alpine

RUN apk --update add \
    make \
    git \
    py3-sphinx \
    py3-sphinx-autobuild \
    py3-pip \
    && rm -rf /var/cache/apk/*

RUN pip3 install -e \
    git+https://github.com/readthedocs/sphinx_rtd_theme.git@ab7d388448258a24f8f4fa96dccb69d24f571736#egg=sphinx_rtd_theme \
    git+https://github.com/humitos/sphinx-version-warning@master

EXPOSE 8000

WORKDIR /mnt/workdir

CMD ["make", "html"]

FROM alpine

# this may not have latex support
# RUN apk --update add py-sphinx py-sphinx-autobuild py-sphinx_rtd_theme && \
RUN apk --update add git py-sphinx py-sphinx-autobuild py-pip && \
    rm -rf /var/cache/apk/*

# RUN pip3 install --ignore-installed sphinx_rtd_theme

RUN pip3 install -e git+https://github.com/readthedocs/sphinx_rtd_theme.git@ab7d388448258a24f8f4fa96dccb69d24f571736#egg=sphinx_rtd_theme

EXPOSE 8000

WORKDIR /mnt/workdir

CMD ["make", "html"]

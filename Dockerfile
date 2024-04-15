FROM alpine

RUN apk --update add \
    make \
    git \
    py3-pip \
    && rm -rf /var/cache/apk/*

# python virtualenv
RUN python -m venv /venv
ENV PATH="/venv/bin:$PATH"

COPY requirements.txt .
RUN pip install -r requirements.txt

EXPOSE 8000

WORKDIR /mnt/workdir

CMD ["make", "html"]

FROM alpine:3.5

RUN apk add --update py2-pip

RUN pip install --upgrade pip

RUN pip install flask

COPY requirements.txt /usr/src/app/

COPY app.py /usr/src/app/
COPY templates/index.html /usr/src/app/templates/

EXPOSE 3000

WORKDIR /usr/src/app/

CMD ["python", "app.py"]

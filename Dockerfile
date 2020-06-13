FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install --upgrade -r requirements.txt
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
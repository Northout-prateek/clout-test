FROM django

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD . /usr/src/app

RUN python manage.py migrate

EXPOSE 8000

ENTRYPOINT [ "python", "manage.py", "runserver", 0.0.0.0:8000 ]

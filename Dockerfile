FROM django

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD . /usr/src/app

RUN python manage.py migrate

CMD [ "python", "manage.py", "runserver" ]

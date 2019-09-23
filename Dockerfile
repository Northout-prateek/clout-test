FROM django

ADD . /cloutProject

WORKDIR /cloutProject

RUN python manage.py migrate

EXPOSE 80

CMD [ "python", "manage.py", "runserver", "0.0.0.0:80" ]


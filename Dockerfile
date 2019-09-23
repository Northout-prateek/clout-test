FROM django

ADD . /cloutProject

WORKDIR /cloutProject

RUN python manage.py migrate

EXPOSE 8000

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]


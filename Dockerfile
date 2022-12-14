FROM python:3.6.8
RUN pip3 install django
WORKDIR /usr/src/
COPY . .
WORKDIR /usr/src/django_app/
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
EXPOSE 8000

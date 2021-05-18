FROM python:3

LABEL MAINTAINER = Ula

COPY eng84-airport-project /usr/src/app
#copying our airport project folder from our OS to app location

EXPOSE 8000
# Expose is the keyword to use to expose the required port for the base image


# Execute command for the base image
WORKDIR /usr/src/app
RUN python -m pip install -r requirements.txt
WORKDIR /usr/src/app/app

RUN python manage.py makemigrations
RUN python manage.py migrate
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
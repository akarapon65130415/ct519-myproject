FROM python:3.11.4

ENV PYTHONUNBUFFERED 1

RUN mkdir /code

WORKDIR /code

ADD requirements.txt /code/

RUN pip install django
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ADD . /code/

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
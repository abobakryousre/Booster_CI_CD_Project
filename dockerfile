FROM python:3.8-alpine
RUN mkdir /app
WORKDIR /app
ADD requirements.txt ./
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

ADD . .
RUN python manage.py makemigrations
RUN python manage.py migrate
CMD python manage.py runserver 0.0.0.0:8000

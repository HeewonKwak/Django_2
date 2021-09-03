FROM python:3.9.0

WORKDIR /home/

RUN git clone https://github.com/HeewonKwak/Python_Django_2.git

WORKDIR /home/Python_Django_2/practice/

RUN echo "SECRET_KEY=django-insecure-2u((ga6f-6n@u(arps8a3jr(q-3-t-rkjaa*35#(i8z_3g8#@f" > .env

RUN pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:9000"]


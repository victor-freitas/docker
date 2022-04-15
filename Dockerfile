FROM python:3.8
ENV PYTHONUNBUFFERED 1 
WORKDIR /code
COPY requirements.txt . 
RUN pip install -r requirements.txt
CMD ["python", "manage.py", "runserver_plus", "0.0.0.0:8000"]
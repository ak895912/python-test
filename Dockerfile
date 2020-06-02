FROM python:3.8
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r /app/requirements.txt
COPY . /app
EXPOSE 8000
CMD python app.py runserver 0.0.0.0:8000

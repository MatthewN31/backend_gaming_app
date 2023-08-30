FROM python:3.8.10-alpine
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY . /app
ENTRYPOINT [ "python" ]
CMD [ "index.py" ]
ADD . /app
FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN test12345 create-db
RUN test12345 populate-db
RUN test12345 add-user -u admin -p admin
EXPOSE 5000
CMD ["test12345", "run"]

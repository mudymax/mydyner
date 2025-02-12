FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN mydyner create-db
RUN mydyner populate-db
RUN mydyner add-user -u admin -p admin
EXPOSE 5000
CMD ["mydyner", "run"]

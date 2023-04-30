FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN flask_flashcards create-db
RUN flask_flashcards populate-db
RUN flask_flashcards add-user -u admin -p admin
EXPOSE 5000
CMD ["flask_flashcards", "run"]

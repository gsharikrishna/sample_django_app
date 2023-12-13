FROM python
WORKDIR /app
COPY . .
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
CMD [ "python","manage.py","runserver"]
EXPOSE 8000
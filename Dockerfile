FROM python:latest
WORKDIR /app
COPY . .
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
RUN pip install --upgrade pip
CMD [ "echo","created a container"]

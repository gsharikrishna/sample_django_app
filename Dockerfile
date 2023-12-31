

# Use the official Python image from the Docker Hub
FROM python:latest

# Set the working directory within the container
WORKDIR /app

# Copy only the necessary files
COPY ./demo /app/demo
COPY ./Dockerfile /app/Dockerfile
COPY ./requirements.txt /app/requirements.txt
COPY ./finalised_model.sav /app/finalised_model

# Install project dependencies
RUN pip install -r requirements.txt
RUN pip install --upgrade pip
RUN pip install joblib

# Define the command to run your application
CMD ["python", "demo/manage.py", "runserver", "0.0.0.0:8000"]


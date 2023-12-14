

# Use the official Python image from the Docker Hub
FROM python:latest

# Set the working directory within the container
WORKDIR /app

# Copy only the necessary files
COPY ./demo /app/demo
COPY ./Dockerfile /app/Dockerfile
COPY ./requirements.txt /app/requirements.txt

# Install project dependencies
RUN pip install -r requirements.txt
RUN pip install --upgrade pip

# Define the command to run your application
CMD ["python", "demo/manage.py", "runserver", "0.0.0.0:8000"]


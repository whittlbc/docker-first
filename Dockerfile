# Use an official Python runtime as a parent image
FROM tiangolo/uwsgi-nginx-flask:python2.7

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY ./app /app

# Define environment variables
ENV NAME uWSGI-Nginx-Flask
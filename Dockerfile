# Use an official Python runtime as a base image
FROM python:3.8

# Set the working directory within the container
WORKDIR /app

# Install Git
RUN apt-get update && apt-get install -y git


# Create a subdirectory for your project
RUN mkdir my_project

# Clone your source code from GitHub into the subdirectory
RUN git clone https://github.com/ManojUchiha02/S_Task_1.git /app/my_project

# Set the working directory to the project subdirectory
WORKDIR /app/my_project

RUN pip install selenium

COPY chromedriver /app/my_project/chromedriver

COPY Selenium_Fill.py /app/my_project/Selenium_Fill.py

ENTRYPOINT ["python3", "Selenium_Fill.py"]

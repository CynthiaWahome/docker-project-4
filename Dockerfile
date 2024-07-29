# Use an existing docker image as a base
FROM ubuntu:latest

# Run update and install necessary dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-venv

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Create a virtual environment
RUN python3 -m venv /app/venv

# Activate the virtual environment
ENV PATH="/app/venv/bin:$PATH"

# Install any needed packages specified in requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Command to run the executable
CMD ["/app/venv/bin/python3", "app.py"]

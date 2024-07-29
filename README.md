# Build Docker images and Manage Container Registries

## Overview

This project demonstrates the process of building Docker images and managing container registries. The following tasks guide you through creating a simple Python Flask application, containerizing it using Docker, and learning about container registries like Docker Hub.


## Project Steps

### Task 1: Sign in to AWS Management Console

### Task 2: SSH into EC2 Instance

### Task 3: Create a Sample Python Application
- Create a new file named `app.py` and include the Python code for a Flask application.
- Create a `requirements.txt` file to list the Python dependencies required for the application.

### Task 4: Create a Docker File

- Create a file named `Dockerfile` to define the Docker image build instructions.
  - The `Dockerfile` should specify the base image, install necessary dependencies, set the working directory, copy application files, create and activate a virtual environment, install Python packages from `requirements.txt`, expose port 80, and define the command to run the application.

### Task 5: Build the Docker Image

- Enter superuser mode.
``docker build -t demo_image .``


### Task 6: Run the Docker Container

``docker run -d -p 80:80 demo_image``

### Task 7: Learn About Container Registries

- Create an account on Docker Hub if you haven't already.
- Create a new repository on Docker Hub and a short description.
- Log in to Docker Hub using the `docker login` command.
- Tag your local Docker image with your Docker Hub username, repository name, and tag.`docker tag demo_image <username>/repository:latest`
- Push the tagged image to Docker Hub `docker push <username>/repository:latest`


## Official Documentation

- [Docker Documentation](https://docs.docker.com/guides/)
- [AWS Documentation](https://docs.aws.amazon.com/)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Disclaimer

Remmember to terminate your EC2 instances and other resources when they are no longer needed to avoid unexpected charges.

---


FROM public.ecr.aws/docker/library/python:3.10-slim-buster

# Update the local package index with the latest packages from the repositories
RUN apt-get update -y

# Install a couple of packages to successfully install postgresql server locally
RUN apt-get install build-essential libpq-dev -y

# Update python modules to successfully build the required modules
RUN pip install --upgrade pip setuptools wheel

WORKDIR /analytics

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the container 
COPY . .

CMD [ "python", "app.py" ]
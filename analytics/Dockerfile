FROM python:3.8.0

# Update the local package index with the latest packages from the repositories
RUN apt-get update -y

# Install a couple of packages to successfully install postgresql server locally
RUN apt-get install build-essential libpq-dev -y

# Update python modules to successfully build the required modules
RUN pip install --upgrade pip setuptools wheel

WORKDIR /workspace/Coworking-Project/analytics

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the container
COPY . .

CMD [ "python", "app.py" ]
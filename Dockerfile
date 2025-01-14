# Use the official Python image from the Docker Hub
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the dependencies file to the working directory
COPY requirements.txt .

# Install any dependencies
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py /app
# Copy the content of the local src directory to the working directory
COPY . .

EXPOSE 5000

# Specify the command to run on container start
CMD ["python", "app.py"]

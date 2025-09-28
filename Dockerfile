# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy dependency file & install
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the app code
COPY . .

# Run the app
CMD ["python", "app.py"]


# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of the code
COPY . .

# Set environment variable (used inside app.py)
ENV MONGO_URI=mongodb://mongo:27017

# Expose Flask default port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]



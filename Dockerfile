# Use a slim Python image
FROM python:3.7-slim

# Set the working directory inside the container
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy your application files
COPY . .

# Expose Streamlit default port
EXPOSE 8080

# Command to run your app
CMD ["streamlit", "run", "app.py", "--server.address=0.0.0.0"]

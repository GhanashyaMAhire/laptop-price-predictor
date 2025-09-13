# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy all files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Hugging Face expects
EXPOSE 7860

# Run Streamlit on the correct host/port
CMD ["streamlit", "run", "app.py", "--server.port=7860", "--server.address=0.0.0.0"]

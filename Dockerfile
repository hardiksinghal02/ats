# Use a Python image that's compatible with ARM architecture (Raspberry Pi)
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt /app/

# Install the Python dependencies from requirements.txt
RUN pip install -r requirements.txt

# Copy the rest of your application files into the container
COPY . /app/

# Expose the port that Streamlit will run on
EXPOSE 8501

# Set the entry point to run your Streamlit app
CMD ["streamlit", "run", "app.py"]

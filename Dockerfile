# Step 1: Use an official Python runtime as a parent image
FROM python:3.9-slim
# Step 2: Set the working directory inside the container
WORKDIR /app
# Step 3: Copy the current directory contents into the container at /app
COPY . .
# Step 4: Install any necessary dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
# Step 5: Expose port 5000 for the Flask app
EXPOSE 1000
# Step 6: Define the command to run your Flask app
CMD ["python", "app.py"]

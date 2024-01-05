# Use the official Python base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY . /app

# Install the Python dependencies
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

# Expose the port on which the Flask app will run
EXPOSE 5000

# Set the environment variable for Flask
ENV FLASK_APP=flaskr
ENV FLASK_ENV=development

# Initialize the database
RUN flask --app flaskr init-db
# Run the Flask application
CMD ["flask", "--app", "flaskr", "run", "--host", "0.0.0.0"]

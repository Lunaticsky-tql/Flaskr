# Flaskr

Flask official demo. It is a simple blog system.

The propose of this project is to learn how to use Pytest to test Flask application and how to use Docker to deploy Flask application.

A reference for this project is [Flask official tutorial](https://flask.palletsprojects.com/en/3.0.x/tutorial/).

Click [here](https://learning-pytest.readthedocs.io/zh/latest/index.html) to learn Pytest in Chinese. It is a good tutorial including many examples.

## How to run

Create virtual environment:
```bash

python3 -m venv venv
```

Activate virtual environment
```bash
source venv/bin/activate
```

Install dependencies

```bash
pip install -r requirements.txt
```

Initialize database
```bash
flask --app flaskr init-db
```

Run application
```bash
flask --app flaskr run
```

## Run in Docker

To create a docker image execute:

```bash
docker build -t flaskr:latest .
```

To run the image execute:

```bash
docker run -d -p 5000:5000 flaskr:latest
```

Then you can access the application at http://your-ip:5000
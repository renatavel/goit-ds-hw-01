FROM python:3.12-slim

RUN pip install --upgrade pip
RUN pip install pipenv

WORKDIR /app
COPY . /app

RUN pipenv install --dev

CMD ["pipenv", "run", "python", "chatbot_final_version.py"]

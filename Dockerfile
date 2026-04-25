FROM python:3.7

RUN apt-get update && apt-get install -y gcc libffi-dev

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

WORKDIR /

CMD ["python", "app.py"]

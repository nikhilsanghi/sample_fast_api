FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7
WORKDIR /
COPY . /
RUN pip install -r requirements.txt
#EXPOSE 5000
CMD exec gunicorn --bind :$PORT --workers 1 --worker-class uvicorn.workers.UvicornWorker  --threads 8 main:app


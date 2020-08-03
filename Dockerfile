FROM python:3.7.7-stretch
WORKDIR /FSND-Deploy-Flask-App-to-Kubernetes-Using-EKS

ADD main.py .

COPY requirements.txt .

RUN pip3 install -r requirements.txt
EXPOSE 8080

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]

CMD [ "python", "./main.py" ]

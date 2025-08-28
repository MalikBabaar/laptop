#Base image
FROM python:3.7

#Workdir
WORKDIR /app

#Copy
COPY ./app

#Run
RUN pip install -r requirements.txt

#Port
EXPOSE 8501

#Command
CMD ["streamlit", "run", "app.py"]

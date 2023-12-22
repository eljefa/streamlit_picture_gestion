FROM python:3.12

WORKDIR ./

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
#EXPOSE 80:8080

CMD [ "python", "./main.py" ]
#RUN streamlit run ./main.py

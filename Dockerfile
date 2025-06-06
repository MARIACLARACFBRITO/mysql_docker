# Use a imagem base oficial do Airflow
FROM apache/airflow:2.10.1-python3.12

# Instalar as bibliotecas necessárias (Pandas, Pendulum e Pymongo)
RUN pip install pymysql pandas pendulum

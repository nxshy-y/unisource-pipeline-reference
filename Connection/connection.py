import os
import psycopg2
from dotenv import load_dotenv

load_dotenv()

class Connect: 
    def __init__(self):
          pass  
      
    def get_connection(self):
        # Loading database credentials from environment variables
        db_name = os.getenv("DB_NAME")
        db_user = os.getenv("DB_USERNAME")
        db_password = os.getenv("DB_PASSWORD")
        db_host = os.getenv("DB_HOST")
        db_port = os.getenv("DB_PORT")
        connection = None 

        try:
                connection = psycopg2.connect(
                    dbname=db_name,
                    user=db_user,
                    password=db_password,
                    host=db_host,
                    port=db_port
                )

                print("Connection to the database was successful!")
        except Exception as e:
                print("Failed to connect to the database.")
                print(f"Error: {e}")
                
        return connection
    
    def close_connection(self):
        pass
                
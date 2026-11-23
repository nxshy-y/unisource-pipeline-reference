from Connection.connection import Connect 


def main():
    db = Connect() 
    #connecting to the database
    conn = db.get_connection()
    
    
    
if __name__ == "__main__":
    main()






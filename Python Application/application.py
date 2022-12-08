import mysql.connector;

cnx = mysql.connector.connect(
        host="localhost",
        port=3306,
        database="art_museum",
        username="root",
        password="Yolo123$"
)

cur = cnx.cursor()

number_input = input("Enter (1) to go to log in menu or (2) to continue as guest: ")
while(number_input != '1' and number_input != '2'):
    print("Error. Invalid Input.")
    number_input = input("Enter (1) to go to log in menu or (2) to continue as guest: ")

print("\n\n")
print("\t\tWelcome to Login Menu\n")

username = input("Enter username: ")
password = input("Enter password: ")

#Creating Data Entry Interface


#End User Interface
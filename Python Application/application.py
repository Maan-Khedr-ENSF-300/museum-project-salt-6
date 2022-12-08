import mysql.connector;

cnx = mysql.connector.connect(
        host="localhost",
        port=33060,
        database="art_museum",
        username="root",
        password="Yolo123$"
)

cur = cnx.cursor()

def guest_menu():
    print("Welcome Guest. To access any of the tables below, Enter (1) or (2)")
    print("(1) - Art Object")
    print("(2) - Exhibition")
    #This will return it to beginning of the program
    print("(b) - Enter b to return to main menu")

def guest_menu_nest():
    print("Welcome to the Art Object Menu. Select a Number from 1 - 3 to access table")
    print("(1) - To View Permanent Collection")
    print("(2)  - To View Borrowed Collection")
    print("(3) - Information about the Artist")
    #This will return it to guest_menu()
    print("(b) - Enter b to return to menu")

def guest_table_selection():
    print("Select Which Table You Would Like to view")
    print("(1) - Painting")
    print("(2) - Sculpture")
    print("(3) - Statue")
    print("(4) - Other")
    ##This will return it to guest_menu()
    print("(b) - Enter b to return to menu")
    


#Creating Data Entry Interface
def browsing_interface():
    guest_menu()
    input_1 = input("Enter a number: ")
    while(input_1 != "1" and input_1 != "2"):
        print("Error. please try again")
        input_1 = input("Enter a number: ")
    if(input_1 == "1"):
        guest_menu_nest()
        input_2 = input("Enter a number: ")
        while(input_2 != "1" and input_2 != "2" and input_2 != "3"):
            print("Error. please try again")
            input_2 = input("Enter a number: ")
        if(input_2 == "1"):
            guest_table_selection()
            input_3 = input("Enter a number: ")
            while(input_3 != "1" and input_3 != "2" and input_3 != "3" and input_3 != "4"):
                print("Error. please try again")
                input_3 = input("Enter a number: ")
            if(input_3 == "1"):
                print("SHOW PAINTING IN PERMANENT COLLECTION")
            elif(input_3 == "2"):
                print("SHOW SCULPTURE IN PERMANENT COLLECTION")
            elif(input_3 == "3"):
                print("SHOW STATUE IN PERMANENT COLLECTION")
            elif(input_3 == "4"):
                print("SHOW OTHER IN PERMANENT COLLECTION")
        elif(input_2 == "2"):
            guest_table_selection()
            input_3 = input("Enter a number: ")
            while(input_3 != "1" and input_3 != "2" and input_3 != "3" and input_3 != "4"):
                print("Error. please try again")
                input_3 = input("Enter a number: ")
            if(input_3 == "1"):
                print("SHOW PAINTING IN BORROWED COLLECTION")
            elif(input_3 == "2"):
                print("SHOW SCULPTURE IN BORROWED COLLECTION")
            elif(input_3 == "3"):
                print("SHOW STATUE IN BORROWED COLLECTION")
            elif(input_3 == "4"):
                print("SHOW OTHER IN BORROWED COLLECTION")
        elif(input_2 == "3"):
            print("SHOW ARTIST TABLE")
    elif(input_1 == "2"):
        print("SHOW THE EXHIBITION TABLE")


def data_entry_interface():
    print("(a) - Lookup information")
    print("(b) - Manipulate database")
    print("\tOther")
    input = input("Enter a letter: ")
    while(input != "a" and input != "b"):
        print("Error detected. Please try again!")
        input = input("Enter a letter: ")
    if(input == "a"):
        print("Note: These are all the Tables:")
        print("\tCollections")
        print("\tArtist")
        print("\tArt_Object")
        print("\tExhibition")
        print("\tPermanent_Collection")
        print("\tBorrowed Collection")
        print("\tPainting")
        print("\tSculpture")
        print("\tStatue\n")
        table_search = input("Enter The Name of Table you would like to look up: ")

def main_menu():
    global isGuest
    number_input = input("Enter (1) to go to log in menu or (2) to continue as guest: ")
    while(number_input != '1' and number_input != '2'):
        print("Error. Invalid Input.")
        number_input = input("Enter (1) to go to log in menu or (2) to continue as guest: ")
    if(number_input == "2"):
        isGuest = True
    else:
        isGuest = False
    
main_menu()

if(isGuest):
    print("Guest Menu")
    browsing_interface()
else:
    print("\n\n")
    print("\t\tWelcome to Login Menu\n")

    #Couldn't figure out the Admin Login
    #Therefore to use code, Enter either admin or employee for username. The password can be anything
    username = input("Enter username: ")
    password = input("Enter password: ")

    while(username != "admin" and username != "employee"):
        print("Error in Code. Please try again")
        username = input("Enter username: ")
        password = input("Enter password: ")

    if(username == "admin"):
        query = input("Enter an SQL command: ")
        
    elif(username == "employee"):
        print("")




#End User Interface
import mysql.connector;

cnx = mysql.connector.connect(
        host="localhost",
        port=3306,
        database="art_museum",
        username="root",
        password="Yolo123$"
)

cur = cnx.cursor()

cur.execute("use art_museum")

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
                cur.execute("select * from Painting where unique_id_no in (Select unique_id_no from Permanent_Collection)")
            elif(input_3 == "2"):
                cur.execute("select * from Sculpture where unique_id_no in (Select unique_id_no from Permanent_Collection)")
            elif(input_3 == "3"):
                cur.execute("select * from Statue where unique_id_no in (Select unique_id_no from Permanent_Collection)")
            elif(input_3 == "4"):
                cur.execute("select * from Other where unique_id_no in (Select unique_id_no from Permanent_Collection)")
        elif(input_2 == "2"):
            guest_table_selection()
            input_3 = input("Enter a number: ")
            while(input_3 != "1" and input_3 != "2" and input_3 != "3" and input_3 != "4"):
                print("Error. please try again")
                input_3 = input("Enter a number: ")
            if(input_3 == "1"):
                cur.execute("select * from Painting where unique_id_no in (Select unique_id_no from Borrowed")
            elif(input_3 == "2"):
                cur.execute("select * from Sculpture where unique_id_no in (Select unique_id_no from Borrowed)")
            elif(input_3 == "3"):
                cur.execute("select * from Statue where unique_id_no in (Select unique_id_no from Borrowed)")
            elif(input_3 == "4"):
                cur.execute("select * from Other where unique_id_no in (Select unique_id_no from Borrowed)")
        elif(input_2 == "3"):
            cur.execute("Select * from Artist")
    elif(input_1 == "2"):
        cur.execute("Select * from Exhibition")


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
        cur.execute("Select * from " + table_search)

    elif(input == "b"):
        print("(1) - Insert Tuple Values")
        print("(2) - Update Tuples")
        print("(3) - Delete Tuples")
        second_input = input("Enter a number: ")
        while(second_input != "1" and second_input != "2" and second_input != "3"):
            print("Error. Please Try again!")
            second_input = input("Enter a number: ")
        if(second_input == "1"):
            print("Search Table")
            table_name = input("Search Table you want to manipulate: ")
            insert_values = input("\nEnter Tuple Values for Table")
            cur.execute("Insert Into " + table_name + " Values " + insert_values)
        elif(second_input == "2"):
            print("Search Table")
            table_name = input("Search Table you want to manipulate: ")
            update_statement = input("\nWrite the attribute=new_value. E.g, name='Johnathan': ")
            update_where = input("Write a condition to specify the tuples. Type * for all: ")
            cur.execute("Update " + table_name + " Set " + update_statement + " Where " + update_where)
        elif(second_input == "3"):
            print("Search Table")
            table_name = input("Search Table you want to manipulate: ")
            delete_where = input("specify the condition to delete (E.g, id='125689'). Select * for all: ")
            cur.execute("Delete From " + table_name + " Where " + delete_where)


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
        print("Type exit to end code")
        query = input("Enter an SQL command: ")
        while(query != "exit"):
            cur.execute(query)
            query = input("Enter another sql command: ")
        
    elif(username == "employee"):
        data_entry_interface()
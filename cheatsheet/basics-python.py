# Python Basics

# Install Python from https://www.python.org/downloads/
# Run Python: you can simply run Python from your terminal by typing python3
# Exit Python: ctrl-Z or ctrl-D

# Run Python as a script: save to a file as filename.py and run it from your terminal with 
# $ python3 filename.py



## Print() function
print("Hello, Python!")

# Variables and string concatenation
name = "Alice"
print("Hello, " + name + "!")

# Class type: determines the type of variable (int, float, string, etc.)
print(type(name))

# Converts a number to string -- because you cannot concatenate a string and a number directly
number = 42
print("The number is " + str(number))

# Multiline string
multiline_string = """This is a
multiline"""
print(multiline_string)

multiline_string = "This is another way\nto create a multiline string"
print(multiline_string)



## Input() function
name = input("Enter your name: ")
print("Hello, " + name + "!")

first_number = int(input("Enter the first number: "))
second_number = int(input("Enter the second number: "))
sum = first_number + second_number
print("The sum is: " + str(sum))



## If-Else statement with an exit() function if true
if 2 > 3:
    print("2 is greater than 3")
    exit()
else:
    print("2 is not greater than 3")

# ELIF statement
ocean_age = 2
bastin_age = 21
if ocean_age < bastin_age:
    print("Ocean is younger than Bastin")
elif ocean_age == bastin_age:
    print("Ocean and Bastin are the same age")
else:
    print("Ocean is older than Bastin")

# you can also use nested if-else statements

# Operators
a == b # Equal to
a != b # Not equal to
a > b  # Greater than
a < b  # Less than
a >= b # Greater than or equal to
a <= b # Less than or equal to

# Logical Operators
a and b # True if both a and b are true
a or b  # True if either a or b is true
not a   # True if a is false



## Loops
# For loop
for i in range(5):
    print("Iteration " + str(i))

# While loop
count = 0
while count < 5:
    print("Count is " + str(count))
    count += 1



## Functions

def add(a, b):                      # Fn Start: define a function named "add" with parameters a and b
    return a + b                    # Fn End: Return the sum of a and b; if you omit return, the function returns None by default
result = add(3, 5)                  # Call the function and store the result in a variable
print("The result is " + str(result))

def greet(name):                    # Fn Start: function name like "greet" can be anything you choose
    print("Hello, " + name + "!")   # Fn End: here we already included the print statement inside the function so that when the function is called, it prints the greeting
greet("Bob")                        # Call the function - so "Bob" can also be an input variable



## Importing Modules
# Hierarchy: Package > Module > Function > Class > Method
# Package: A collection of related modules (ex. the datetime package contains modules for working with dates and times)
# Module: A file containing Python code (ex. the math module contains functions for mathematical operations)
# Function: A block of code that performs a specific task (ex. the sqrt() function in the math module calculates the square root of a number)
# Class: A blueprint for creating objects (ex. the date class in the datetime module represents a date)
# Method: A function that is associated with an object (ex. the strftime() method of the date class formats a date as a string)

# Importing the specific class "date" only from the module "datetime"
from datetime import date # another way to represent this is "import datetime.date"
today = date.today()
print("Today's date is: " + today.strftime("%B %d, %Y")) # %B - full month name, %d - day of the month, %Y - year with century
print("Year:", today.year)
print("Month:", today.month)
print("Day:", today.day)

# Importing the entire math module
import math
print("The square root of 16 is: " + str(math.sqrt(16)))
print("The value of pi is: " + str(math.pi))
print("The value of e is: " + str(math.e))

# Importing the random module
import random
print("A random integer between 1 and 10: " + str(random.randint(1, 10)))
print("A random float between 0 and 1: " + str(random.random()))

# Importing the os module to interact with the operating system
import os
print("Current working directory: " + os.getcwd())
print("List of files and directories in the current directory: " + str(os.listdir('.')))

# Common modules: datetime, math, random, os, sys, json, re, requests (for HTTP requests), numpy (for numerical computations), pandas (for data manipulation and analysis)
# Common module installation: pip install module_name (ex. pip install requests)
# Common modules for data science: numpy, pandas, matplotlib, seaborn, scikit-learn, tensorflow, keras
# Common modules for web development: flask, django, requests, beautifulsoup4, scrapy
# Common modules for automation: selenium, pyautogui, schedule, watchdog
# Common modules for GUI development: tkinter, PyQt, Kivy
# Common modules for testing: unittest, pytest, nose
# Common modules for networking: socket, paramiko, scapy
# Common modules for file handling: shutil, zipfile, tarfile, pathlib
# Common modules for data serialization: json, pickle, yaml
# Common modules for regular expressions: re
# Common modules for date and time: datetime, time, calendar
# Common modules for system operations: os, sys, subprocess
# Common modules for web scraping: requests, beautifulsoup4, scrapy
# Common modules for machine learning: scikit-learn, tensorflow, keras, pytorch
# Common modules for image processing: PIL (Pillow), OpenCV
# Common modules for audio processing: pydub, librosa, wave
# Common modules for video processing: moviepy, OpenCV
# Common modules for data visualization: matplotlib, seaborn, plotly, bokeh
# Common modules for natural language processing: nltk, spacy, textblob
# Common modules for web frameworks: flask, django, fastapi
# Common modules for database interaction: sqlite3, SQLAlchemy, psycopg2, pym
# Common modules for cloud computing: boto3 (AWS), google-cloud-storage, azure-storage-blob


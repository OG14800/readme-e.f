Student Gradebook Management System
Overview
The Student Gradebook Management System is a Python-based application that allows users to manage student records and grades. The program stores student information, calculates average grades, searches for students, and displays gradebook summaries.

Features
Add multiple students to a gradebook
Record grades for:
Maths
Economics
Statistics
Calculate student average grades automatically
Display all students and their averages
Search for a specific student by name
Remove students from the gradebook
View detailed student information
Classes
Student Class
The Student class represents an individual student.

Attributes
name - Student's name
grades - Dictionary storing subjects and grades
Methods
add_grade(subject, grade)

Adds a grade for a subject.
calculate_average()

Calculates and returns the student's average grade.
display_student()

Displays all student details and average grade.
Gradebook Class
The Gradebook class manages multiple students.

Attributes
students - List containing student objects
Methods
add_student(student)

Adds a student to the gradebook.
remove_student(student_name)

Removes a student by name.
search_student(student_name)

Searches and returns a student object.
display_all_students()

Displays all students and their average grades.
Program Flow
Create a gradebook.
Enter the number of students.
For each student:
Enter the student's name.
Enter grades for Maths, Economics, and Statistics.
Display a summary of all students.
Search for a student by name.
Display detailed information for the found student.
Example
Input
Enter number of students: 2

Student 1
Enter student name: Alice
Enter Maths grade: 85
Enter Economics grade: 78
Enter Statistics grade: 90

Student 2
Enter student name: Bob
Enter Maths grade: 75
Enter Economics grade: 80
Enter Statistics grade: 70
Output
GRADEBOOK SUMMARY
----------------------------------------
Alice - Average: 84.33
Bob - Average: 75.00

Enter student name to search: Alice

STUDENT DETAILS
----------------------------------------
Name: Alice
Maths: 85.0
Economics: 78.0
Statistics: 90.0
Average: 84.33
Requirements
Python 3.x
How to Run
Save the code in a file named gradebook.py.
Open a terminal or command prompt.
Navigate to the project directory.
Run the program:
python gradebook.py

Author
Student Gradebook Management System developed in Python using Object-Oriented Programming (OOP) principles.


#section f

Student Gradebook Management System
Overview
This Python application is an object-oriented Student Gradebook Management System that allows users to manage student records, store grades, calculate averages, sort students, and search for student information. The system also includes custom exception handling to improve reliability and input validation.

Features
Add students and their grades
Store grades for:
Maths
Economics
Statistics
Calculate average grades automatically
Prevent duplicate student entries
Validate grade inputs (0–100)
Handle invalid grade entries using custom exceptions
Search for students by name
Sort students alphabetically
Sort students by average grade
Display a complete gradebook report
Program Structure
Custom Exceptions
StudentNotFoundError
Raised when a searched student does not exist in the gradebook.

class StudentNotFoundError(Exception):
    pass
InvalidGradeError
Raised when a grade entered is outside the valid range (0–100).

class InvalidGradeError(Exception):
    pass
Student Class
Represents an individual student and their academic records.

Attributes
Attribute	Description
name	Student's name
grades	Dictionary storing subjects and grades
Methods
add_grade(subject, grade)
Adds a grade for a subject after validating the grade range.

calculate_average()
Returns the student's average grade.

Example:

average = student.calculate_average()
Gradebook Class
Manages a collection of students.

Attributes
Attribute	Description
students	List of Student objects
Methods
add_student(student)
Adds a student while preventing duplicate names.

search_student(student_name)
Searches for a student by name.

Returns:

Student object if found
Raises StudentNotFoundError if not found
sort_by_name()
Sorts students alphabetically using Bubble Sort.

sort_by_average()
Sorts students by average grade using Bubble Sort.

display_students()
Displays all students and their average grades.

Exception Handling
The system handles:

Invalid Grade Input
if not 0 <= grade <= 100:
    raise InvalidGradeError(
        "Grade must be between 0 and 100."
    )
Non-Numeric Input
except ValueError:
    print("Grades must be numeric.")
Student Search Errors
except StudentNotFoundError as error:
    print(error)
Sample Input
Enter number of students: 2

Student 1
Enter student name: Alice
Enter Maths grade: 85
Enter Economics grade: 78
Enter Statistics grade: 90

Student 2
Enter student name: Bob
Enter Maths grade: 75
Enter Economics grade: 80
Enter Statistics grade: 70
Sample Output
SORTED BY NAME

GRADEBOOK REPORT
--------------------------------------------------
Alice - Average: 84.33
Bob - Average: 75.00

SORTED BY AVERAGE

GRADEBOOK REPORT
--------------------------------------------------
Bob - Average: 75.00
Alice - Average: 84.33

Enter student name to search: Alice
Alice found with average 84.33
Algorithms Used
Bubble Sort
The application uses Bubble Sort for:

Sorting students alphabetically
Sorting students by average grade
Time Complexity:

O(n²)
Space Complexity:

O(1)
Concepts Demonstrated
Object-Oriented Programming (OOP)
Classes and Objects
Constructors (__init__)
Dictionaries
Lists
Methods
Custom Exceptions
Exception Handling (try-except)
Searching Algorithms
Sorting Algorithms (Bubble Sort)
Input Validation
Data Encapsulation
Requirements
Python 3.x
No external libraries are required.

How to Run
Save the program as:
gradebook.py
Open a terminal or command prompt.

Navigate to the project directory.

Run:

python gradebook.py



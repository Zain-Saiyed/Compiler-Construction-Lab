# Compiler Construction Assignemnts - Lex and YACC

## How to run the files?
1. On Windows after installing WSL (Windows Subsystem for Linux) and Ubuntu. Install Flex and Bison in Ubuntu by running the following commands:

    ```bash
    sudo apt install flex
    sudo apt install bison
    ```
    To confirm if the installation was successfull, run the following commands:

        which flex
        which bison

    By running the above the commands the installation location path will be displayed:

        /usr/bin/flex
        /usr/bin/bison

2. Clone this repository, the required files are present each Assignment folder.


**To run the code by running the following commands:**
1. Navigate inside an assignment directory, say we want to run assignment 4:

    ```
    cd "Compiler-Construction-Lab/Assignment 4"
    ```

2. Generate the lex.yy.c file by :

   ```
   flex <lex_file_name.l>
   ```
  
3. Compile the generated C file by:

    ```
    gcc lex.yy.c
    ```

4. Execute the program by:

    ```
    ./a/out <file_name_argument>
    ```
  
 <hr>

## Assignments

| | Name | Description |
|------| ------ | ------ |
|1| [Print Hello World:](#1-print-Hello-World) |Accepts User's input and prints "Hello World" if input string matches "Hi".|
|2| [Display greeting to user:](#2-display-greeting-to-user) |Program to greet user by accepting user's name as input.|
|3| [Counting vowels and consonants:](#3-counting-vowels-and-consonants) |Program to display counts of vowels and consonants present in given string.|
|4| [Upper-case Word Identification:](#4-upper-case-Word-Identification) |Program to display all the words with each letter in uppercase from a given sentence.|
|5| [Well-formedness of parentheses:](#5-well-formedness-of-parentheses) |Program to check if the parantheses present in equations are well-formed and display the unbalance parantheses count.|
|6| [C program Tokenizer:](#6-c-program-Tokenizer) |Program to display count of keywords, comments, lines of code, whitespaces, headers included, etc used in a C program.|
|7| [Decimal to Hexadecimal conversion:](#7-decimal-to-Hexadecimal-conversion) |Program to convert a Decimal number to Hexadecimal number in a given file. |
|8| [Identification of words starting with 'A':](#8-identification-of-words-starting-with-a) |Program to count number words starting with Capital A.|
|9| [Case conversion:](#9-case-conversion) |Program to convert upper case letters to lower case letters and vice versa.|
|10| [URL domain identification:](#10-url-domain-identification) |Program to display the count of URLs having com, org and edu domains.|
|11| [Infix expression evaluation:](#11-infix-expression-evaluation) |Progam to evaluate infix expressions.|

Each of the Assignment in detail:

### 1. Print Hello World:
Program which accepts User’s input and prints “Hello World” if input string matches “Hi”.

[Source Code](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%201/hello-world.l)

##### Output:
![Program 1 output](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%201/Output.jpg)

<hr>

### 2. Display greeting to user:
Program to greet user by accepting user’s name as input.

[Source Code](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%202/print_name_enter.l)

##### Output:
![Program 2 output](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%202/Output.jpg)

<hr>

### 3. Counting vowels and consonants:
Program to display counts of vowels and consonants present in given string.

[Source Code](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%203/identify_vowel_consonants.l)

##### Output:
![Program 3 output](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%203/Output.jpg)

<hr>

### 4. Upper-case Word Identification:
Program to display all the words with each letter in uppercase from a given sentence.

[Source Code](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%204/Upper_case_identification.l)

##### Output:
![Program 4 output](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%204/Output.jpg)

<hr>

### 5. Well-formedness of parentheses:
Program to check if the parantheses present in equations are well-formed and display the unbalance parantheses count.

[Source Code](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%205/Wellformed_parenthesis.l)
##### Input to program:
![Program input](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%205/Input.PNG)
##### Output:
![Program 5 output](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%205/Output.png)

<hr>

### 6. C program Tokenizer:
Program to display count of keywords, comments, lines of code, whitespaces, headers included, etc used in a C program.

[Source Code](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%206/Tokenizer.l)
##### Input to program:
![Program input](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%206/Input.JPG)
##### Output:
![Program 6 output](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%206/Output.JPG)

In case of missing file name argument:

![when file name argument is missing](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%206/argument_not_found.JPG)

In case where file does exist in current directory:

![when file does not exist](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%206/file_not_found.JPG)

<hr>

### 7. Decimal to Hexadecimal conversion:
Program to convert a Decimal number to Hexadecimal number in a given file.

[Source Code](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%207/decimal_to_hexadecimal.l)
##### Input to program:
![Program input](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%207/Input.PNG)
##### Output:
![Program 7 output](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%207/Output.png)

In case where file does exist in current directory:

![when file does not exist](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%207/file_not_found.png)

<hr>

### 8. Identification of words starting with ‘A’:
Program to count number words starting with Capital A.

[Source Code](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%208/counting_capital_As.l)

##### Output:
![Program 8 output](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%208/Output.JPG)

<hr>

### 9. Case conversion:
Program to convert upper case letters to lower case letters and vice versa.

[Source Code](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%209/convert_cases.l)
##### Input to program:
![Program input](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%209/input.JPG)
##### Output:
![Program 9 output](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%209/Output.JPG)

<hr>

### 10. URL domain identification:
Program to display the count of URLs having com, org and edu domains.

[Source Code](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%2010/ending_with_com_org_edu.l)

##### Input to program:
![Program input](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%2010/input.JPG)
##### Output:
![Program 10 output](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%2010/Output.jpg)

<hr>

### 11. Infix expression evaluation:
Progam to evaluate infix expressions.

##### Source Code:
- [infix_evaluate.l](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%2011/infix_evaluate.l)
- [infix_evaluate.y](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%2011/infix_evaluate.y)

##### Output:
![Program 11 output](https://github.com/Zain-Saiyed/Compiler-Construction-Lab/blob/main/Assignment%2011/Output.png)


<hr>



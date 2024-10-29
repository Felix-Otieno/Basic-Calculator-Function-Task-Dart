// Imported the library to use it for input/output functionalities. 
import 'dart:io'; 


void basicCalculator(String operation, double numericValue1, double numericValue2) { 
/*
  Defined a function called basicCalculator that takes three parameters: operation, arithematic operatores to perform calculation
                                                                         numericValue1, the first number involved in the operation
                                                                         numericValue2, the first number involved in the operation
  The function is used to perform arithmetic calculation such as addition, subtraction, division and multiplication.
*/

  double result; // Variable to store the result of the operation

// Condition statement of if else if to determine the operation and result
  if (operation == "+") {
    result = numericValue1 + numericValue2;
    print(result.toStringAsFixed(2));
  } else if (operation == "-") {
    result = numericValue1 - numericValue2;
    print(result.toStringAsFixed(2));
  } else if (operation == "*") {
    result = numericValue1 * numericValue2;
    print(result.toStringAsFixed(2));
  } else if (operation == "/") {
    if (numericValue2 != 0) {
      result = numericValue1 / numericValue2;
      print(result.toStringAsFixed(2)); // Print the result formatted to 2 decimal places
    } else {
      print("Error: Division by zero"); // Exit the function to avoid printing result
    }
  } else {
    print("$operation is not a valid operation");  // Exit the function if an invalid operation is entered
  }
}


// Try catch to handle invalid input errors while the code is being executed 
// stdout.write(), allow to write output to the console
// stdin.readLineSyns(), allow to read user input from the console 
// ! at the end of stdin.readLineSyns() it is used to handle null values expect the user to provide input
void main() {
  try {
    stdout.write("Enter an operator (+ - * /): "); 
    String operation = stdin.readLineSync()!.trim();// Remove spaces from the user input

    stdout.write("Enter the first number: ");
    double numericValue1 = double.parse(stdin.readLineSync()!);// Convert a string to a double data type

    stdout.write("Enter the second number: ");
    double numericValue2 = double.parse(stdin.readLineSync()!);// Convert a string to a double data type

    basicCalculator(operation, numericValue1, numericValue2); //Invoked the function with user input
  } catch (e) {
    // Handle errors like invalid input
    print("Invalid input. Please enter valid numbers and operators.");
  }
}

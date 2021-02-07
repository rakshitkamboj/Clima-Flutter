import 'dart:io';

main() {
  String myString = '15';

  // myString + 5; //String and integer cannot be combined So, this Error is called Compiled time error
//Complied errors are those errors which can be easily find by a developer.
// And a program cannot run without fixing them.

  double myStringAsDouble =
      double.parse(myString); //Convert String into a double
  print(myStringAsDouble + 5);
}

main1() {
  String myString = 'abc'; //if we place a string of characters here.

  double myStringAsDouble = double.parse(
      myString); //Then this line will cause error as we cannot convert characters to double
  //These Type of errors can occur during running of code.
  print(myStringAsDouble + 5);
}

//So, to avoid these types of error we have to use a method called try and catch.
main2() {
  String myString = 'abc';
  //try&catch helps a code run successfully even if there is a error in that program.
  //This will avoid crashing of the application.
  try {
    //Do something that might fail
    double myStringAsDouble = double.parse(myString);
    print(myStringAsDouble + 5);
  } catch (e) {
    //Catch an exception that occurs.
    print(e);
  }
}
//Null Aware Operator
// some variable ??defaultValue

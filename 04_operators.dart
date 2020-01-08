/*
 * Entry point
 */ 
void main() {
  /*
  testMathOperators();
  testLogicOperators();
  testRelationalOperators();
  testUnaryOperators();
  testMoreOperators();
  */
  
  testMoreOperators();
}

testMathOperators() {
  var num1 = 10.6;
  var num2 = 5;
  
  print("Add ${num1 + num2}");
  print("Substract ${num1 - num2}");
  print("Multiply ${num1 * num2}");
  print("Divide ${num1 / num2}");
  print("Divide (int) ${num1 ~/ num2}");
  print("Modulus ${num1 % num2}");
}

testLogicOperators() {
  var value1 = true;
  var value2 = false;
  
  print("And ${value1 & value2}");
  print("Or ${value1 | value2}");
  print("Not ${!value1}");
}

testRelationalOperators() {
  var num1 = 100;
  var num2 = 200;
  
  print("< ${num1 < num2}");
  print("<= ${num1 <= num2}");
  print("> ${num1 > num2}");
  print(">= ${num1 >= num2}");
  print("== ${num1 == num2}");
  print("!= ${num1 != num2}");
}

testUnaryOperators() {
  var counter = 1;
  
  print(++counter);//2
  print(counter++);//3
  print(--counter);//2
  print(counter--);//2
  print(counter);//1
}

testMoreOperators() {
  //XXX: ternary conditional
  bool discount = false;
  var prize = 100;
  var total = discount? prize/100 * 75 : prize;
  
  print("Total is $total");
  
  //XXX: binary conditional
  var anotherName = "Some name";
  var name = null;
  
  var result = (name?? anotherName);
  
  print("Result is $result");
  
  var somePerson = Person();
  somePerson._name = "John Dough";
  somePerson._age = 18;
  somePerson._gender = "male";

  //XXX: operator .. usage
  var anotherPerson = Person()
    .._name = "Jane Dough"
    .._age = 18
    .._gender = "female";
  
  print(somePerson.toString());
  print(anotherPerson.toString());
}

/**
 * 
 */ 
class Person {
  String _name = "";
  int _age = 0;
  String _gender = "";  
  
  @override
  toString() {
    return "$_name" " $_age" " $_gender";
  }
}

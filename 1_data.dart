/*
 * Entry point for Dart features testing
 */
void main() {
  /*
  testVarDeclaration();
  testDynamicVar();
  testConstant();
  testStringType();
  testNumericType();
  testParsing();
  testBoolType();
  testListType();
  testSetType();
  testMapType();
  */

  testMapType();
}

/*
 * Var declaration in Dart using "var" or explicit types
 */
void testVarDeclaration() {
  // Declaring vars (optionally with type)
  String name;
  var anotherName; // type inference applied when assigning value

  // type reference may change
  dynamic andAnotherName;

  // NULL value by default
  print("Name is $name");
  print("Another name is $anotherName");
  print("And another name is $andAnotherName");

  // Vars starting with _ are PRIVATE
  var localVar = "Im local";
  var _privateVar =
      "Im private at file/library level (declared at class level)";

  print("local var is $localVar");
  print("private var is $_privateVar");
}

/*
 * Dynamic var feature in Dart using dynamic
 */
void testDynamicVar() {
  dynamic someValue;

  print("value is: $someValue of type ${someValue.runtimeType}");

  someValue = "Hello";
  print("value is: $someValue of type ${someValue.runtimeType}");

  someValue = "3";
  print("value is: $someValue of type ${someValue.runtimeType}");

  someValue = 3;
  print("value is: $someValue of type ${someValue.runtimeType}");
}

/*
 * Constant declaration in Dart using "const" and "final"
 */
void testConstant() {
  // const - constant at COMPILE TIME
  const MATH_CONSTANT = 3.14; //type inference
  const double PI = 3.14; // explicit type

  print("Math constant is $MATH_CONSTANT");
  print("Pi is $PI");

  //const DateTime NOW = DateTime.now();//XXX: compiler error, cannot asign dymamic vals

  // final - constant at RUNTIME
  final DateTime TIME_NOW = DateTime.now();

  print("Now is $TIME_NOW");

  // const may be applied to values too...
  List numsVar = [1, 2, 3, 4];
  List numsConstant = const [1, 2, 3, 4];

  numsVar[0] = 1;
  //numsConstant[0] = 10;//XXX: compiler error, cannot change val
}

/*
 * Usage of "String" data type in Dart
 */ 
void testStringType() {
  String name1 = 'Im single quoted';
  String name2 = "Im double quoted";
 
  print(name1);
  print(name2);
  
  print(concatenateAdjacentStrings());
}

/*
 * Perform concatenation by using adjacent strings separated by blanks
 */
String concatenateAdjacentStrings() {
  //XXX: adjacent strings are concatenated
  return "Double " 'Single';
}

/*
 * Usage of numeric data types in Dart
 */
void testNumericType() {
  int someInteger = 1;
  double someDecimal = 1.5;
  num someNum = 0;

  print(someInteger);
  print(someDecimal);
  print(someNum);
}

/*
 * Usage of API methods for parsing
 */
void testParsing() {
  int age = 18;
  String strAge = age.toString();

  print("age is $age of type ${age.runtimeType}");
  print("strAge is $strAge of type ${strAge.runtimeType}");
  
  String strPrice = "1.5";
  double price = double.parse(strPrice);

  print("strPrice is $strPrice of type ${strPrice.runtimeType}");
  print("price is $price of type ${price.runtimeType}");
  print("price converted is ${price.toString()} of type ${price.toString().runtimeType}");
}

/*
 * Usage of "bool" data type in Dart
 */
void testBoolType() {
  const THRESHOLD = 100;
  var amount = 134;
  
  bool overflown = (amount >= THRESHOLD);
  
  if (overflown) {
    print("Over threshold");
  
  } else {
    print("Under threshold");
  }
}

/*
 * Usage of "List" data type in Dart
 */
void testListType() {
  List data = [4, 3, 2, 1, 5];
  print("data is $data");

  data.add(6);
  print("added data is $data");

  data.sort((a, b) => a.compareTo(b));
  print("sorted data is $data");

  data.removeLast();
  print("removed data is $data");
  
  var element = data[3];
  print("retrieved element is $element");
  
  var position = data.indexOf(30);
  print("retrieved position is $position");
}

/*
 * Usage of "Set" data type in Dart
 */
void testSetType() {
  Set cookies = Set();//XXX: unordered list

  cookies.addAll(["Chocolate", "Vanilla", "Strawberry"]);

  print("do we have orange? ${cookies.contains("Orange")}");
  
  cookies.add("Chocolate");
  cookies.add("Chocolate");
  cookies.add("Chocolate");
  cookies.remove("Vanilla");

  print("do we have choco? ${cookies.contains("Chocolate")}");
  print("do we have choco and vanilla? ${cookies.containsAll(["Chocolate", "Vanilla"])}");
}

/*
 * Usage of "Map" data type in Dart
 */
void testMapType() {
  
  // key, value pairs
  var mustSeeBcn = {
    "Gaudi" : "Sagrada Familia", 
    "Puig i Cadafalch" : "Casa de les Punxes"};
  
  print(mustSeeBcn);
  print(mustSeeBcn.keys);
  print(mustSeeBcn.values);
  print("Gaudi built ${mustSeeBcn["Gaudi"]}");
  print("Domenech i Muntaner built ${mustSeeBcn["Muntaner"]}");//XXX: null returned
  
  Map mustSeeParis = Map<String, String>();
  
  //mustSeeParis["Gustave Eiffel"] = 1; //XXX: error, type not allowed
  mustSeeParis["Gustave Eiffel"] = "Eiffel Tower";
  
  print(mustSeeParis);
  print(mustSeeParis.keys);
  print(mustSeeParis.values);
  print("In Paris go to ${mustSeeParis["Gustave Eiffel"]}");
}









 
/*
 * Entry point for flow control structs testing in Dart
 */ 
void main() {
  /*
  testEnums(); 
  testSwitchStruct();
  testForStruct();
  testWhileStruct();
  testIfStruct();
  */
  testEnums();
}

/*
 * Test enum properties in Dart
 */ 
void testEnums() {
  print(Colors.RED);
  print(Colors.GREEN);
  print(Colors.BLUE);
  print(Colors.values); 
}

/*
 * Looping struct: for/for-each
 */ 
void testForStruct() {
  for (var i = 0; i < 20; i++) {
    print(i);
  }
  
  var languages = ["Java", "Kotlin", "Swift", "Objective-C", "Dart"];
  
  print("for-each...");
  for (var language in languages) {
    print(language);
  }
  
  print("functional...");
  languages.forEach(
    (it) => {print(it)}
  );
}

/*
 * Looping struct: while/do-while
 */ 
void testWhileStruct() {
  print("while...");
  
  var i = 20;
  while (i > 0) {
    print(i--);
  }
  
  print("do-while...");
  
  var j = 20;
  do {
    print(j--);
  } while (j > 0);
}

/*
 * Conditional struct: switch
 */ 
void testSwitchStruct() {   
  var someColor = Colors.RED;
  
  switch (someColor) {
    //XXX: error is thrown when case is missing  
    case Colors.RED:
        print("R");
        break;
    case Colors.GREEN:
        print("G");
        break;
    case Colors.BLUE:
        print("B");
        break;
    default:
      break;
  }
}

/*
 * Conditional struct: if
 */
void testIfStruct() {
  if (DateTime.now().millisecond % 2 == 0) {
    print("even");
    
  } else {
    print("odd");
  }
}

/*
 * Global enumeration
 */ 
enum Colors {RED, GREEN, BLUE}


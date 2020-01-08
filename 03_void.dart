

/*
 * Entry point
 */
void main() {
  var greeter = Greeter();
  
  //XXX: returned value can saved but it is always null
  var numExplicit = greeter.greetExplicitReturn();
  //print("num explicit is $numExplicit");//XXX: compile error
  
  //XXX: implicitly returned value can be saved, will be null when nothing else is returned
  var numImplicit = greeter.greetImplicitReturn();
  print("num implicit is $numImplicit");
}

/**
 * Test class
 */ 
class Greeter {

  /*
   * Function with implicit return data type, returns NULL if no other
   * value is returned
   */
  greetImplicitReturn() {
    print("Hi from implicit");
    
    dynamic num = 1;
    
    return num;
  }
  
  /*
   * Function with explicit return data type, returns NOTHING (void) 
   * although its returned value can be saved
   */
  void greetExplicitReturn() {
    print("Hi from explicit");
    
    dynamic num = 1;
    
    return num;
  }
}
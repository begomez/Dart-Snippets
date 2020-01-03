
/*
 * Entry point
 */ 
void main() {
  /*
  highOrderFuncs();
  lambdas();
  nestedFuncs();
  */
  
  //XXX: store func in var...
  var returnedFunction = gimmeSomeFunction();
  
  //XXX: and use var to call the function stored...
  returnedFunction();
}

void highOrderFuncs() {
  greet("John");
  
  Greeter obj = Greeter();
    
  //XXX: named params
  obj.greetSomebody(f: greet, name: "Jane");
  obj.greetSomebody(f: greet);
}

void lambdas() {
  var movies = ["The Godfather", "The Godfather II", "The Godfather III"];
  
  movies.forEach((it) => {
    print("${it} is in position ${movies.indexOf(it)}")
  });
}

//XXX: lexicographical scope, access goes downwards
void nestedFuncs() {
  var nestedVar = 0;
  
  print("On nested funcs...");
  
  /*
   * Inner func
   * Lexicographical scope applies
   */ 
  void firstLevel() {
    var firstLevelVar = 1;
    
    print("On 1st level...");
    
    /*
     * Another inner func...
     */ 
    void secondLevel() {
      var secondLevelVar = 2;
      
      print("On 2nd level...");
      
      /*
       * And another...
       */ 
      void thirdLevel() {
        var thirdLevelVar = 3;
        
        print("On 3rd level....");
        
        assert(nestedVar == 0);
        assert(firstLevelVar == 1);
        assert(secondLevelVar == 2);
        assert(thirdLevelVar == 3);
        
      }// closes third
      
      thirdLevel();
      
    }// closes second
    
    secondLevel();
    
  }// closes first
  
  firstLevel();
  
}// closes nested

Function gimmeSomeFunction() {
  return () => {print("There goes your function")};
}

/**
 * Class with high-order functions
 */ 
class Greeter {
  
  //XXX: high-order function receiving 1 fun as param and default value
  greetSomebody({Function f, String name = "somebody..."}) {
    f(name);
  }
}

//XXX: global fun
greet(String name) {
  print("Good morning, ${name}");
}


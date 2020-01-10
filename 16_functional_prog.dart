/*
 * Top-level function in shortcut form
 * Convert an int to a String
 */ 
String scream(int length) => 
  //XXX: show chracter many times
  "    A${'a' * length}h!     ";

/*
 * Entry point
 */ 
void main() {
  /*
  imperative();  
  declarative();
  */
  declarative();
}
  
/*
 * Traditional programming code
 */ 
void imperative() {  
  final values = [1, 2, 3, 5, 10, 50];
  
  //XXX: loop over values and perform actions
  for (var length in values) {
    if (length >= 10) {
      print(scream(length).trim());
    }
  }
}

/*
 * Functional programming code
 */ 
void declarative() {
  final values = [1, 2, 3, 5, 10, 50];
  
  values
    
    //XXX: filter some items
    .where((num) => num >= 10)
    
    //XXX: apply conversion to each list item (from int to string)
    .map(scream)
    
    //XXX: apply conversion over items, String type is infered
    .map((str) => str.trim())
    
    //XXX: perform action over each converted item
    .forEach((str) => print("$str (${str.runtimeType})"))
    //.forEach(print);//XXX: valid too
    ;   
}
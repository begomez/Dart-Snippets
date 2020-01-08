/*
 * Entry point for generics testing
 */ 
void main() {
  /*
   * testGenericClasses();
   * testGenericMethod();
   */ 
  
  testGenericClasses();
}
  
void testGenericClasses() {  
  Box<String> boxStr = Box();

  for (var i = 0; i < 3; i++) {
    boxStr.setByName(i.toString(), "Value $i");
  }
  
  for (var i = 0; i < 3; i++) {
    print("${boxStr.getByName(i.toString())}");
  }

  //XXX: reification so generic type is mantained at runtime (no erasure)
  print("Type: ${boxStr.runtimeType}");
  print("Is boxStr a Box<String>? ${boxStr is Box<String>}");
  
  Box<num> boxNum = Box();
  
  for (var j = 1; j <= 3; j++) {
    boxNum.setByName("Num$j", j);
  }
  
  //XXX: some vals will be null
  for (var j = 1; j <= 5; j++) {
    print(boxNum.getByName("Num$j"));
  }
  
  print("Type: ${boxNum.runtimeType}");
  print("Is boxNum a Box<String>? ${boxNum is Box<String>}");

}

/*
 * Class with generic data type property
 */ 
class Box<T> {
  Map _data = Map<String, T>();
  
  void setByName(String name, T t) {
    _data[name] = t;
  }
  
  T getByName(String name) {
    return _data[name];
  }
}

void testGenericMethod() {
  someGenericFunction("3");
  someGenericFunction(3);
  someGenericFunction(3.01);
  someGenericFunction(DateTime.now());
}

/*
 * Function with generic param 
 */

void someGenericFunction<V>(V v) {
  print("Param has type: ${v.runtimeType}");
}
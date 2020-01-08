/*
 * Entry point for generators test
 */
void main() {
  /*
   * testSyncGenerator();
   * testAsyncGenerator();
   */ 
  testAsyncGenerator();
}

void testSyncGenerator() {
  var data = generateValuesSync();
  
  var iterator = data.iterator;
  
  while (iterator.moveNext()) {
    print("Sync value is ${iterator.current}"); 
  }
}

//XXX: mark generator with sync* and return Iterable<T>
Iterable<int> generateValuesSync() sync* {
  var i = 0;
  
  while (i < 10) {
    yield i++;//XXX: use yield to push value
  }
  
  //XXX: no EXPLICIT return statement
}

void testAsyncGenerator() async {
  var data = generateValuesAsync();
  
  //XXX: use await loop to extract vals
  await for (var number in data) {
    print("Async value is ${number}");
  }
}

//XXX: mark generator with async* and return Stream<T>
Stream<int> generateValuesAsync() async* {
  var i = 0;
  
  while (i < 10) {
    await Future.delayed(const Duration(seconds: 1));
    
    yield i++;//XXX: push value
  }
  
  //XXX: no EXPLICIT return statement
}
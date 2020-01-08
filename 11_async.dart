
/*
 * Entry point for asynchronous programming test
 */ 
void main() {
  print("Gonna call async function...");
  
  /*
  testFutures();
  testStreams();
  */
  testStreams();
  
  print("Async function called!");
}

/*
 * Use Future to retrieve values returned AT ONCE by long running ops
 */ 
void testFutures() async {
  print("Gonna perform work...");

  //XXX: use "await" when calling async fun
  var retrievedValue = //OK
  //String retrievedValue = //OK
  //Future<String> retrievedValue = //KO, its already unboxed once returned 
    await longRunningOperationReturningAFuture();
  
  print("Work performed!");
  
  print("${retrievedValue.toString()}");
}

//XXX: mark function with "async" before its body
Future<String> longRunningOperationReturningAFuture() async {
  return Future.delayed(
    Duration(seconds: 5), 
    () => "Your value goes here..."
  );
}

/*
 * Use Stream to retrieve values returned SEQUENTIALLY by long running ops
 */ 
void testStreams() async {
  Stream<String> data = 
    longRunningOperationReturningAStream(10);
  
  //XXX: use await loop when receiving a stream
  await for(var str in data) {
    print("Value retrieved is $str");
  }
}

//XXX: mark function with "async" before its body
//In fact this one is a generator (async*)
Stream<String> longRunningOperationReturningAStream(int max) async* {
  print("Gonna perform work...");

  var i = 0;
  
  while (i < max) {
    //XXX: use "yield" to send value
    yield i.toString();

    await Future.delayed(
      Duration(seconds: 1), 
      () => print("Waiting...")
    );
    
    i++;    
  }
  
  print("Work performed!");
}
  

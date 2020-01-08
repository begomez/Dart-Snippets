/*
 * Entry point for exceptions test
 */
void main() {
  /*
   * handleException();
   * throwException(); 
   */ 
  
  throwException();
}

//XXX: no need to handle explicitly, all exceptions are unchecked
void handleExceptions() {
  var result = null;
  
  try {
    print("Result is ${result[0]}");
    
  //XXX: all structs are valid  
  } on Error {
    print("catch(Error)");  
   
  } on FormatException catch (fe) {
    print("catch(FormatException)");
  
  } catch (other) {
    print("catch(other)");
  
  } finally {
    print("finally");
  }
}

//XXX: use throw <<obj>>
void throwException() {
  //XXX: anything can be thrown...
  //throw "Hello";
  //throw 1;
  throw CustomException("Customized");
}

/*
 * Custom exception subclass by implementing Exception interface
 */ 
class CustomException implements Exception {
  String _msg;
  
  CustomException(this._msg);
}

void main() {
  CustomNumber cn1 = CustomNumber(100);
  CustomNumber cn2 = CustomNumber(200);
  
  print("Result is: ${cn1 + cn2}");
}

class CustomNumber {
  num _value = 0;
  
  CustomNumber(this._value); 
  
  //XXX: overriding operator + 
  @override 
  int operator + (CustomNumber other) => this._value + other._value;
}

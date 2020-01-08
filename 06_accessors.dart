/*
 * Entry point for custom accessors test
 */ 
void main() {
  Hero batman = Hero("Bruce", "Wayne");
  Hero superman = new Hero("Clark", "Kent");
  
  print(batman.fullName);
  
  print(superman.fullName);
  
  superman.fullName = "Kal-El";
  print(superman.fullName);
}

/*
 * Class with custom accessor
 */ 
class Hero {
  String _firstName;
  String _lastName;
  
  //XXX: getter
  String get fullName => this.toString();
  
  //XXX: setter
  set fullName(n) => {
    this._firstName = n,//XXX: instructions in lambda body separated by COMMAS
    this._lastName = ""
  };
  
  Hero(this._firstName, this._lastName);
  
  @override
  toString() {
    return this._firstName + " " + this._lastName;
  }
}

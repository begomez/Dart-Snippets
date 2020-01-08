/*
 * Entry point for classes & interfaces test
 */ 
void main() {
  Person he = Person("John", "Dough");
  Person she = Person.build("Jane", "Dough");
  Worker employee = Worker("Long", "Hours");
  Boss boss = Boss("The", " Boss");
  Ceo ceo;
  
  
  print(he.greetMe());
  print(she.greetMe());
  print(employee.greetMe());
  print(boss.greetMe());
}

/*
 * Superclass
 * Classes internally define an interface too
 */ 
class Person {
  String _firstName;
  String _lastName;

  //XXX: UNNAMED CONSTR
  Person(this._firstName, this._lastName);

  //XXX: NAMED CONSTR
  Person.build(this._firstName, this._lastName);
  
  String greetMe() {
    return "Hello, I'm ${this._firstName} ${this._lastName}";
  }
}

/*
 * Subclass
 */ 
class Worker extends Person {
  Worker(_firstName, _lastName) : super(_firstName, _lastName);
  
  Worker.build(_firstName, _lastName) : super.build(_firstName, _lastName);
  
  @override
  String greetMe() {
    return "${this._firstName} ${this._lastName} reporting for work...";
  }
}

/*
 * Concrete class that complies with Person contract.
 * Must override all props and methods
 */ 
class Boss implements Person {
  
  @override
  String _firstName;
  
  @override
  String _lastName;
  
  //XXX: cant access superclass constructors
  Boss(this._firstName, this._lastName);
  
  @override
  String greetMe() {
    return "I'm ${this._firstName} ${this._lastName}, you're fired!";
  }
}

/*
 * Abstract lass that complies with Person contract (partially).
 * No need to override everything
 */ 
abstract class Ceo implements Person {

  //XXX: abstract method
  void attendImportantMeeting();

  //XXX: concrete method
  void goToCongress() {
    print("Im going");
  } 
  
  //XXX: overriden method
  @override
  String greetMe() {
    return "Im the CEO";
  }
}
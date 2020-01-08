/*
 * Entry point for mixin test
 */ 
void main() {
  Person person = Person("John", "Dough"); 
  Employee trainee = Employee("Long", "Hours");
  Employer boss = Employer("The", "Boss");
    
  trainee.init(true, false);
  boss.init(false, true);
  
  print(person.toString());
  print(trainee.toString());
  print(boss.toString());
  
  person.doSome();
  trainee.doSome();
  boss.doSome();
  
  print("${trainee.fullName()} earns ${trainee.calculateSalary()} €");
  print("${boss.fullName()} earns ${boss.calculateSalary()} €");
}

/**
 * Test struct
 */ 
mixin Test {
  
}

/*
 * Mixin struct encapsulating behavior that classes can use
 */ 
mixin Worker {
  bool _nightShift = false;
  bool _accountable = false;

  //XXX: mock constructor behavior since mixin cannot have constructors
  init(bool _nightShift, bool _accountable) {
    this._nightShift = _nightShift;
    this._accountable = _accountable;
  }
  
  double calculateSalary() {
    const BASE_SALARY = 100.0;
    const INCREMENT = 10.0;
    
    print("Calculating for ${this.runtimeType}...");
    
    double salary = BASE_SALARY;
    
    salary += this._nightShift? INCREMENT : 0;
    
    salary *= this._accountable? 5 : 1;
    
    return salary;
  } 
}

/*
 * Super class 
 */ 
class Person {
  String _firstName;
  String _lastName;
  
  Person(this._firstName, this._lastName);
  
  String fullName () {
    return this._firstName + " " + this._lastName;
  }
  
  doSome() {
    //XXX: no actions
  }
  
  @override
  String toString() {
    return "${this._firstName + " " + this._lastName}";
  }
}

/*
 * Concrete class that uses former mixin 
 */
class Employee extends Person with Worker {
  
  //XXX: constr
  Employee(_firstName, _lastName) : super(_firstName, _lastName);
  
  @override
  doSome() {
    //XXX: can access mixin method
    this.calculateSalary();
  }
  
  @override
  String toString() {
    
    //XXX: can access mixin props
    return "My name is ${this.fullName()}, night? ${this._nightShift}, accountable? ${this._accountable}";
  }
}

/*
 * Concrete class that uses former mixin 
 */
class Employer extends Person with Worker, Test {
  
  //XXX: constr
  Employer(_firstName, _lastName) : super(_firstName, _lastName);  

  @override
  doSome() {
    //XXX: can access mixin method
    this.calculateSalary();
  }
  
  @override
  String toString() {
    //XXX: can access mixin props
    return "My name is ${this.fullName()}, night? ${this._nightShift}, accountable? ${this._accountable}";
  }
}

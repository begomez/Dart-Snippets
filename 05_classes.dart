void main() {
  Publication publish1 = 
    Book(
    "Charles Dickens",
    "A Christmas Carol",
    500,
    "None");
  
  Publication publish2 = 
    ComicBook(
    "Bob Kane",
    "Batman",
    20,
    "Unknown artist",
    "Action Comics");
  
  Publication publish3 = 
    Book.lessEmpty("Arthur Conan Doyle")
      .._name = "Sherlock Holmes"
      .._pages = 300
      .._prologueBy = "None";
  
  Book publish4 = Publication.createBook("El Quijote");
    
  ComicBook publish5 = Publication.createComic("Superman");
  
  print(Publication.GREETING);

  print("\nBook3 prologuer is ${(publish3 as Book)._prologueBy}\n\n");
  
  print(publish1.toString());
  print(publish2.toString());
  print(publish3.toString());
  print(publish4.toString());
  print(publish5.toString());
}

/*
 * Abstract superclass
 */ 
abstract class Publication {
  
  //XXX: static field accessed without instances
  static final String GREETING = "Welcome to the Library!\n";
  
  //XXX: private props, accessors generated automatically
  String _author = "";
  String _name = "";
  int _pages = 0;
    

  // Named constructor (factory) returning subclass instances
  // No explicit return, it is a constructor
  factory Publication.createBook(String name) {
    //XXX: no access to "this" here
    return Book("Unknown", name, 0, "Unknown prologuer");
  }
  
  // Named constructor (FACTORY) returning subclass instances
  // No explicit return, it is a constructor
  factory Publication.createComic(String name) {
    //XXX: no access to "this" here
    return ComicBook("Unknown", name, 0, "Unknown artist", "Unknown collection");
  }
  
  // NAMED constructor
  // No explicit return, it is a constructor
  Publication.empty() {
    this._author = "Unknown";
    this._name = "No title";
    this._pages = 0;
  }
  
  // Another NAMED constructor...
  // No explicit return, it is a constructor
  Publication.lessEmpty(this._author) {
    this._name = "No title";
    this._pages = 0;    
  }
  
  // UNNAMED constructor (only one allowed), in shortcut form
  Publication(this._author, this._name, this._pages);
}

/*
 * Subclass
 */ 
class Book extends Publication {
  String _prologueBy = "";
  
  Book.empty() : super.empty();
  
  Book.lessEmpty(_author) : super.lessEmpty(_author);
  
  Book(_author, _name, _pages, this._prologueBy) : super(_author, _name, _pages);
  
  @override
  toString() {
    return "$_author\n$_name\n$_pages\n$_prologueBy\n";  
  }
}

/*
 * Another subclass
 */ 
class ComicBook extends Publication {
  String _coverArtist = "";
  String _collection = "";
  
  ComicBook(_author, _name, _pages, this._coverArtist, this._collection) : super(_author, _name, _pages);
  
  @override
  toString() {
    return "$_author" "\n$_name" "\n$_pages" "\n$_coverArtist" "\n$_collection\n";
  }
}

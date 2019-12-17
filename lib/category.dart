

class Category{
  int id;
  String name;
  String get getName => name;
  set setName(String name) {
    this.name=name;
  }
  Category(this.id, this.name);

}

final List<Category> categories = [
  Category(1,"Basic"),
  Category(2,"Lesson 1"),
  Category(3,"Lesson 2"),
  Category(4,"Lesson 3"),
  Category(5,"Lesson 4"),
  Category(6,"Lesson 5"),
  Category(7,"Lesson 6"),
  Category(8,"Lesson 7"),
  Category(9,"Lesson 8"),
  Category(10,"Lesson 9"),
  Category(11,"Lesson 10"),
  Category(12,"Lesson 11"),
  Category(13,"Lesson 12"),
];
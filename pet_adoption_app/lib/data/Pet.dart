
class Pet {
  String id;
  String name;
  String breed;
  String location;
  String type;
  String age;
  String gender;
  String description;
  String img;
  bool isAdopted;
  bool isFav;

  Pet({
    required this.id,
    required this.name,
    required this.breed,
    required this.location,
    required this.gender,
    required this.type,
    required this.description,
    required this.img,
    required this.age,
    this.isAdopted = false,
    this.isFav = false,
  });

  
   
}

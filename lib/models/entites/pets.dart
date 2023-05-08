class Pets {
  String name;
  String species;
  String breed;
  String image;

  Pets({this.name, this.species, this.image, this.breed});

  Pets.fromJson(dynamic json) {
    name = json['name'];
    species = json['species'];
    image = json['image'];
    breed = json['breed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['species'] = this.species;
    data['image'] = this.image;
    data['breed'] = this.breed;
    return data;
  }
}

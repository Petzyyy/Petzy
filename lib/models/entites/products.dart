class Products {
  String name;
  String description;
  String image;
  int price;

  Products({this.name, this.description, this.image, this.price});

  Products.fromJson(dynamic json) {
    name = json['name'];
    description = json['description'];
    image = json['image'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['description'] = this.description;
    data['image'] = this.image;
    data['price'] = this.price;
    return data;
  }
}

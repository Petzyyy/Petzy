class Freelencer {
  String name;
  String phone;
  String address;
  String image;

  Freelencer({this.name, this.phone, this.image, this.address});

  Freelencer.fromJson(dynamic json) {
    name = json['name'];
    phone = json['phone'];
    image = json['image'];
    address = json['address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['image'] = this.image;
    data['address'] = this.address;
    return data;
  }
}

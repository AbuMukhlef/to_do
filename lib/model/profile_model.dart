class ProfileModel {
  String? name;
  String? email;
  String? phone;
  String? age;

  ProfileModel({this.name, this.email, this.phone, this.age});

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      age: json['age'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'age': age,
    };
  }
}

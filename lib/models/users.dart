// ignore_for_file: public_member_api_docs, sort_constructors_first
class Users {
  String? id;
  String? fullName;
  String? email;
  String? phone;
  String? designation;
  String? connectGroup;

  Users({
    this.id,
    this.fullName,
    this.email,
    this.phone,
    this.designation,
    this.connectGroup,
  });

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        id: json["id"],
        fullName: json["fullName"],
        email: json["email"],
        phone: json["phone"],
        designation: json["designation"],
        connectGroup: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fullName": fullName,
        "email": email,
        "phone": phone,
        "designation": designation,
        "connectGroup": phone,
      };
}

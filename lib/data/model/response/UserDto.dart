import 'package:ecommerce/domain/entity/UserEntity.dart';

/// name : "omar-mohamed-mostafa"
/// email : "omar109@gmail.com"
/// role : "user"

class UserDto {
  UserDto({
      this.name, 
      this.email, 
      this.role,});

  UserDto.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
    role = json['role'];
  }
  String? name;
  String? email;
  String? role;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['email'] = email;
    map['role'] = role;
    return map;
  }
UserEntity toUserEntity(){
    return UserEntity(name:  name, email:email );
}
}
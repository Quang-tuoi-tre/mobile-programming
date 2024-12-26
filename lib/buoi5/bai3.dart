
import 'dart:convert';

class User {
  String name;
  int age;
  User({required this.name, required this.age});

  Map<String, dynamic> toJson() =>{
    'name':name,
    'age': age,
  };
}




void main(){
  User user = User(name: 'Hồ Nhật Quang - 2180602822', age:21);
  String jsonString = jsonEncode(user.toJson());
  print(jsonString);

}


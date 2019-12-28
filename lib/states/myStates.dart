import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

part 'myStates.g.dart';

class Model {
  String name;
  String email;
  Model(this.name, this.email);
}

class MyState = _MyState with _$MyState;

abstract class _MyState with Store {
  @observable
  List<Model> users = [];

  _MyState();

  @action
  Future<List<Model>> getUsers() async {
    var data = await http
        .get("http://www.json-generator.com/api/json/get/cpGiJxjhsO?indent=2");

    var jsonData = json.decode(data.body);
    for (var u in jsonData) {
      Model tmp = new Model(u["name"], u["email"]);
      this.users.add(tmp);
      print(tmp.name);
    }
    return users;
  }
}

MyState myState = MyState();

import 'package:flutter/material.dart';
import 'package:gallary_app/ApiDara/HttpRequest.dart';
import 'package:gallary_app/ApiDara/Model.dart';
import 'package:gallary_app/ApiDara/HttpRequest.dart';
import 'package:gallary_app/ApiDara/Model.dart';
import 'package:provider/provider.dart';

class UserProvider with ChangeNotifier {
  List<GModel> modelList = [];
  late GModel userModel;

  getCategory() async {
    modelList = (await CustomHttpRequest().getUsers())!;
    notifyListeners();
  }
}

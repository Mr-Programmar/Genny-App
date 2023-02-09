import 'dart:convert';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../Model/model_items.dart';

class ItemController extends GetxController {
  late ItemsModel modalInstance;
  var apidata;
  List listsave=[];

  getItemFromApi() async {
    final responce = await http.get(
      Uri.parse('https://newgenny.eavenir.com/api/items'),
    );
    print(responce.statusCode);
    // print(responce.body);
    apidata = jsonDecode(responce.body);

    listsave=apidata["Data"];
    print(apidata);
    print(listsave.length);

    print("Item___api___hit");


    // print(apidata["Data"][0]["id"]);

    // ItemsModel(
    //     id: apidata["Data"]["id"].toString(),
    //     Rate: apidata["Data"]["Rate"].toString(),
    //     CategoryName: apidata["Data"]["CategoryName"].toString(),
    //     ItemName: apidata["Data"]["ItemName"].toString(),
    //     CompanyName: apidata["Data"]["CompanyName"].toString());
  }
}

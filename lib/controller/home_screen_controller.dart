import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  List azkarAr = [];
  List azkarEn = [];

  decodeJson(BuildContext context) async {
    var responce = await rootBundle.loadString("assets/json/azkar.json");
    var responcebody = await jsonDecode(responce);
    // print(responcebody);
    azkarAr.addAll(responcebody['العربية']);
    azkarEn.addAll(responcebody['English']);
    // print(azkarAr);
  }

  @override
  void onInit() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await decodeJson(Get.context!);
    });
    super.onInit();
  }
}

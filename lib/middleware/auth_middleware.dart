import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_middleware9_10/main.dart';
import 'package:getx_middleware9_10/services/settingservices.dart';

class Auth_middleware extends GetMiddleware {
  SetteingServices controller = Get.find();
  @override
  // TODO: implement priority
  int? get priority => 1;
  @override
  RouteSettings? redirect(String? route) {
    if (controller.sharedprefs!.get("role") == "user")
      return const RouteSettings(name: "/home");
    if (controller.sharedprefs!.get("role") == "admin")
      return const RouteSettings(name: "/admin");
  }
}

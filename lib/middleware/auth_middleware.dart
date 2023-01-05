import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_middleware9_10/main.dart';

class Auth_middleware extends GetMiddleware {
  @override
  // TODO: implement priority
  int? get priority => 1;
  @override
  RouteSettings? redirect(String? route) {
    print("auth here");
    if (sharedprf!.get("role") == "user")
      return const RouteSettings(name: "/home");
    if (sharedprf!.get("role") == "admin")
      return const RouteSettings(name: "/admin");
  }
}

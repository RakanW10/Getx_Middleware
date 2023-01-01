import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_middleware9_10/main.dart';

class Auth_middleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (sharedprf!.get("id") != null) return RouteSettings(name: "/home");
  }
}

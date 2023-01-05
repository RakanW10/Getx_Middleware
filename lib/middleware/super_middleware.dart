import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Super_middleware extends GetMiddleware {
  @override
  //The priority ordered in increasing orider. 0 > 1 > 2 > ..... > +n
  int? get priority => 2;
  bool myvar = true;

  @override
  RouteSettings? redirect(String? route) {
    print("super here");
    if (myvar != true) return const RouteSettings(name: "super");
  }
}

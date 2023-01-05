import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_middleware9_10/middleware/auth_middleware.dart';
import 'package:getx_middleware9_10/middleware/super_middleware.dart';
import 'package:getx_middleware9_10/view/admin.dart';
import 'package:getx_middleware9_10/view/home.dart';
import 'package:getx_middleware9_10/view/login.dart';
import 'package:getx_middleware9_10/view/super.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedprf;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedprf = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: "/", page: () => Login(), middlewares: [
          Auth_middleware(),
          Super_middleware(),
        ]), // here what we say is: before going to login page, pleace check these middleware
        GetPage(name: "/home", page: () => Home()),
        GetPage(name: "/admin", page: () => Admin()),
        GetPage(name: "/super", page: () => Super()),
      ],
    );
  }
}

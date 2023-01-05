import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_middleware9_10/main.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('loing Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                sharedprf?.setString("role", "user");
                Get.offNamed("home");
              },
              child: const Text("Loing User"),
            ),
            ElevatedButton(
              onPressed: () {
                sharedprf?.setString("role", "admin");
                Get.offNamed("admin");
              },
              child: const Text("Loing Admin"),
            ),
          ],
        ),
      ),
    );
  }
}

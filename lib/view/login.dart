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
        child: ElevatedButton(
          onPressed: () {
            sharedprf?.setString("id", "test");
            Get.offNamed("/home");
          },
          child: Text("Loing"),
        ),
      ),
    );
  }
}

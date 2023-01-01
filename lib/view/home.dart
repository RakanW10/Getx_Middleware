import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_middleware9_10/main.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            sharedprf?.clear();
            Get.offAllNamed("/");
          },
          child: Text("Logout"),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
        ),
      ),
    );
  }
}

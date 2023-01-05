import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_middleware9_10/services/settingservices.dart';

class Home extends GetView<SetteingServices> {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<SetteingServices>(
              builder: (c) => Text("${controller.counter}"),
            ),
            ElevatedButton(
              onPressed: () {
                controller.increase();
              },
              child: Icon(Icons.plus_one),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
            ),
            ElevatedButton(
              onPressed: () {
                controller.sharedprefs.clear();
                Get.offAllNamed("/");
              },
              child: Text("Logout"),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
            ),
          ],
        ),
      ),
    );
  }
}

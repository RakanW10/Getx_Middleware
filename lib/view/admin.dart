import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_middleware9_10/main.dart';
import 'package:getx_middleware9_10/services/settingservices.dart';

class Admin extends GetView<SetteingServices> {
  const Admin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            controller.sharedprefs.clear();
            Get.offAllNamed("/");
          },
          child: Text("Logout"),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
        ),
      ),
    );
  }
}

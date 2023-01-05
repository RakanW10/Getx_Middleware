import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SetteingServices extends GetxService {
  late SharedPreferences sharedprefs;

  // just for example
  RxInt counter = 0.obs;

  Future<SetteingServices> init() async {
    // Start Services
    sharedprefs = await SharedPreferences.getInstance();
    // End

    counter.value = sharedprefs.getInt("counter") ?? 0;
    return this;
  }

  // just for examlpe
  increase() {
    counter.value++;
    sharedprefs.setInt("counter", counter.value);
  }
}

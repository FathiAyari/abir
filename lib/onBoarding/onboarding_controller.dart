import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class onBoardingController extends GetxController {
  check() {
    var seen = GetStorage();
    seen.write("seen", 1);
  }
}

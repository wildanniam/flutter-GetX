import 'package:get/state_manager.dart';
import 'package:getx/models/orang.dart';

class OrangController extends GetxController {
  var orang = Orang();
  var isUpper = false.obs;

  void chageToUpperCase() {
    orang.nama.value = orang.nama.value.toUpperCase();
    isUpper.value = true;
  }

  void changeToLoweCase() {
    orang.nama.value = orang.nama.toLowerCase();
    isUpper.value = false;
  }
}

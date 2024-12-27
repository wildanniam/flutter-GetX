import 'package:get/state_manager.dart';
import 'package:getx/models/orang.dart';

class OrangController extends GetxController {
  //Karena kita pake getx metode simple (bukan reactive) disini gaada obs nya
  var orang = Orang(nama: "jAwir", umur: 20);
  var isUpper = false;

  void chageToUpperCase() {
    orang.nama = orang.nama.toUpperCase();
    isUpper = true;
    update(); //Pengganti obs di simple adalah kita menaruh func update()
  }

  void changeToLoweCase() {
    orang.nama = orang.nama.toLowerCase();
    isUpper = false;
    update(); //Pengganti obs di simple adalah kita menaruh func update()
  }
}

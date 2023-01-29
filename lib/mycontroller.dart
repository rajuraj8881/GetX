import 'package:get/get.dart';

class MyController extends GetxController {
  List text = ['item 1', 'item 2'];

  void addItem(int index) {
    text.add('item $index');
    update();
  }
}

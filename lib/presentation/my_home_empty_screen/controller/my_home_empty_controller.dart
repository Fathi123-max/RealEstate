import 'package:escan/core/app_export.dart';
import 'package:escan/presentation/my_home_empty_screen/models/my_home_empty_model.dart';
import 'package:escan/widgets/custom_bottom_bar.dart';

class MyHomeEmptyController extends GetxController {
  Rx<MyHomeEmptyModel> myHomeEmptyModelObj = MyHomeEmptyModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

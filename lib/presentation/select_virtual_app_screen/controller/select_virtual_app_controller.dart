import 'package:escan/core/app_export.dart';
import 'package:escan/presentation/select_virtual_app_screen/models/select_virtual_app_model.dart';

class SelectVirtualAppController extends GetxController {
  Rx<SelectVirtualAppModel> selectVirtualAppModelObj =
      SelectVirtualAppModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    selectVirtualAppModelObj.value.listwhatsappItemList.value
        .forEach((element) {
      element.streetaddressController.value.dispose();
    });
  }
}

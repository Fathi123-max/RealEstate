import 'package:escan/core/app_export.dart';
import 'package:escan/presentation/notification_empty_states_screen/models/notification_empty_states_model.dart';

class NotificationEmptyStatesController extends GetxController {
  Rx<NotificationEmptyStatesModel> notificationEmptyStatesModelObj =
      NotificationEmptyStatesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

import 'package:escan/core/app_export.dart';
import 'package:escan/presentation/message_chat_screen/models/message_chat_model.dart';

class MessageChatController extends GetxController {
  Rx<MessageChatModel> messageChatModelObj = MessageChatModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

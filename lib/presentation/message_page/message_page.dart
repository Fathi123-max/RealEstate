import '../message_page/widgets/message_item_widget.dart';
import 'controller/message_controller.dart';
import 'models/message_item_model.dart';
import 'models/message_model.dart';
import 'package:escan/core/app_export.dart';
import 'package:escan/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:escan/widgets/app_bar/appbar_subtitle.dart';
import 'package:escan/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MessagePage extends StatelessWidget {
  MessageController controller = Get.put(MessageController(MessageModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 64,
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24),
                    onTap: () {
                      onTapArrowleft2();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_message".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 42, right: 24, bottom: 42),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(() => ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return Padding(
                                padding: getPadding(top: 17.0, bottom: 17.0),
                                child: SizedBox(
                                    width: getHorizontalSize(327),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.blueGray50)));
                          },
                          itemCount: controller.messageModelObj.value
                              .messageItemList.value.length,
                          itemBuilder: (context, index) {
                            MessageItemModel model = controller.messageModelObj
                                .value.messageItemList.value[index];
                            return MessageItemWidget(model, onTaptf: () {
                              onTaptf();
                            });
                          })),
                      Padding(
                          padding: getPadding(top: 14, bottom: 5),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray50))
                    ]))));
  }

  onTaptf() {
    Get.toNamed(AppRoutes.messageChatScreen);
  }

  onTapArrowleft2() {
    Get.back();
  }
}

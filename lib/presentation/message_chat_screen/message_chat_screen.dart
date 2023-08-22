import 'controller/message_chat_controller.dart';
import 'package:escan/core/app_export.dart';
import 'package:escan/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:escan/widgets/app_bar/custom_app_bar.dart';
import 'package:escan/widgets/custom_button.dart';
import 'package:escan/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

class MessageChatScreen extends GetWidget<MessageChatController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(57),
                leadingWidth: 64,
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 6, bottom: 9),
                    onTap: () {
                      onTapArrowleft3();
                    }),
                title: Padding(
                    padding: getPadding(left: 12),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("lbl_robert_fox".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtManropeBold18.copyWith(
                                      letterSpacing: getHorizontalSize(0.1)))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 1, right: 56),
                                  child: Text("lbl_online".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtManropeMedium12
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.4)))))
                        ])),
                actions: [
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgUser40x40,
                      margin: getMargin(left: 24, top: 6, right: 9),
                      onTap: () {
                        onTapUser();
                      }),
                  AppbarIconbutton1(
                      svgPath: ImageConstant.imgCall40x40,
                      margin: getMargin(left: 12, top: 6, right: 33),
                      onTap: () {
                        onTapCall();
                      })
                ]),
            body: Container(
                width: double.maxFinite,
                margin: getMargin(top: 14),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Divider(
                          height: getVerticalSize(1),
                          thickness: getVerticalSize(1),
                          color: ColorConstant.gray300),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 16),
                              child: Text("lbl_today2".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtManropeSemiBold12Bluegray500
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.4))))),
                      CustomButton(
                          height: getVerticalSize(53),
                          width: getHorizontalSize(97),
                          text: "lbl_hi_tom".tr,
                          margin: getMargin(top: 15, right: 24),
                          variant: ButtonVariant.FillBlue50,
                          shape: ButtonShape.CustomBorderTL10,
                          padding: ButtonPadding.PaddingAll16,
                          fontStyle: ButtonFontStyle.ManropeMedium14Gray900),
                      Container(
                          width: getHorizontalSize(264),
                          margin: getMargin(left: 87, top: 8, right: 24),
                          padding: getPadding(all: 16),
                          decoration: AppDecoration.fillBlue50.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: getHorizontalSize(218),
                                    margin: getMargin(right: 13),
                                    child: Text("msg_i_m_looking_for".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtManropeMedium14Gray900))
                              ])),
                      Padding(
                          padding: getPadding(top: 5, right: 24),
                          child: Text("lbl_12_13".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManrope12.copyWith(
                                  letterSpacing: getHorizontalSize(0.4)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(210),
                              margin: getMargin(left: 24, top: 15),
                              padding: getPadding(
                                  left: 16, top: 13, right: 16, bottom: 13),
                              decoration: AppDecoration.fillBluegray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL101),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(154),
                                        margin: getMargin(top: 4),
                                        child: Text("msg_hi_santi_of_c".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeMedium14Gray900))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 5),
                              child: Text("lbl_12_15".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtManrope12.copyWith(
                                      letterSpacing: getHorizontalSize(0.4))))),
                      Container(
                          width: getHorizontalSize(264),
                          margin: getMargin(left: 87, top: 15, right: 24),
                          padding: getPadding(
                              left: 16, top: 13, right: 16, bottom: 13),
                          decoration: AppDecoration.fillBlue50.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL10),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    width: getHorizontalSize(222),
                                    margin: getMargin(top: 4, right: 9),
                                    child: Text("msg_that_s_great_t".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtManropeMedium14Gray900))
                              ])),
                      Padding(
                          padding: getPadding(top: 5, right: 24),
                          child: Text("lbl_12_18".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManrope12.copyWith(
                                  letterSpacing: getHorizontalSize(0.4)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              margin: getMargin(left: 24, top: 15),
                              padding: getPadding(
                                  left: 16, top: 13, right: 16, bottom: 13),
                              decoration: AppDecoration.fillBluegray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL101),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(140),
                                        margin: getMargin(top: 4),
                                        child: Text("msg_of_course_see".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeMedium14Gray900))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 5),
                              child: Text("lbl_12_19".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtManrope12.copyWith(
                                      letterSpacing: getHorizontalSize(0.4)))))
                    ])),
            bottomNavigationBar: Container(
                decoration: AppDecoration.outlineBluegray1000f,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          padding: getPadding(
                              left: 24, top: 16, right: 24, bottom: 16),
                          decoration: AppDecoration.outlineBluegray1000f,
                          child: Row(children: [
                            Expanded(
                                child: Container(
                                    padding: getPadding(
                                        left: 16,
                                        top: 15,
                                        right: 16,
                                        bottom: 15),
                                    decoration: AppDecoration.fillBluegray50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder10),
                                    child: Row(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgPlus,
                                          height: getSize(22),
                                          width: getSize(22),
                                          margin: getMargin(top: 1, bottom: 1)),
                                      Padding(
                                          padding: getPadding(left: 12, top: 4),
                                          child: Text("msg_write_a_reply".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtManropeRegular14)),
                                      Spacer(),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgCamera,
                                          height: getSize(24),
                                          width: getSize(24),
                                          onTap: () {
                                            onTapImgCamera();
                                          })
                                    ])))
                          ]))
                    ])),
            floatingActionButton: CustomFloatingButton(
                height: 56,
                width: 56,
                child: CustomImageView(
                    svgPath: ImageConstant.imgVolume,
                    height: getVerticalSize(28.0),
                    width: getHorizontalSize(28.0)))));
  }

  onTapImgCamera() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapArrowleft3() {
    Get.back();
  }

  onTapUser() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapCall() async {
    await PermissionManager.askForPermission(Permission.contacts);
    List<Contact> contactList = [];
    if (await PermissionManager.isPermissionGranted(Permission.contacts)) {
      contactList = await FlutterContacts.getContacts();
    }
  }
}

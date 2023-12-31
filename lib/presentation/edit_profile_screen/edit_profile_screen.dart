import 'controller/edit_profile_controller.dart';
import 'package:escan/core/app_export.dart';
import 'package:escan/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:escan/widgets/app_bar/appbar_subtitle.dart';
import 'package:escan/widgets/app_bar/custom_app_bar.dart';
import 'package:escan/widgets/custom_button.dart';
import 'package:escan/widgets/custom_icon_button.dart';
import 'package:escan/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends GetWidget<EditProfileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 64,
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24),
                    onTap: () {
                      onTapArrowleft19();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_edit_profile".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 32, right: 24, bottom: 32),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapStackrectangle361();
                              },
                              child: Container(
                                  height: getSize(100),
                                  width: getSize(100),
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle361100x100,
                                            height: getSize(100),
                                            width: getSize(100),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(50)),
                                            alignment: Alignment.center),
                                        CustomIconButton(
                                            height: 24,
                                            width: 24,
                                            variant:
                                                IconButtonVariant.OutlineGray50,
                                            shape:
                                                IconButtonShape.RoundedBorder10,
                                            padding:
                                                IconButtonPadding.PaddingAll5,
                                            alignment: Alignment.bottomRight,
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgEdit12x12))
                                      ])))),
                      Padding(
                          padding: getPadding(top: 33),
                          child: Text("lbl_full_name".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeMedium12Bluegray500
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.4)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.fullnameOneController,
                          hintText: "lbl_andrew_preston".tr,
                          margin: getMargin(top: 7)),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Text("lbl_email".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeMedium12Bluegray500
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.4)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.emailOneController,
                          hintText: "lbl_test_gmail_com".tr,
                          margin: getMargin(top: 7),
                          textInputType: TextInputType.emailAddress),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Text("lbl_address".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeMedium12Bluegray500
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.4)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.addressOneController,
                          hintText: "msg_merta_nadi_stre".tr,
                          margin: getMargin(top: 7)),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Text("lbl_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeMedium12Bluegray500
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.4)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.passwordOneController,
                          hintText: "lbl_123456".tr,
                          margin: getMargin(top: 7, bottom: 5),
                          textInputAction: TextInputAction.done)
                    ])),
            bottomNavigationBar: Container(
                padding: getPadding(all: 24),
                decoration: AppDecoration.outlineBluegray1000f,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_save_change".tr,
                          shape: ButtonShape.RoundedBorder10,
                          padding: ButtonPadding.PaddingAll16,
                          fontStyle: ButtonFontStyle.ManropeBold16WhiteA700_1)
                    ]))));
  }

  onTapStackrectangle361() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapArrowleft19() {
    Get.back();
  }
}

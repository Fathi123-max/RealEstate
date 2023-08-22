import 'controller/add_new_property_home_facts_controller.dart';
import 'package:escan/core/app_export.dart';
import 'package:escan/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:escan/widgets/app_bar/appbar_subtitle.dart';
import 'package:escan/widgets/app_bar/custom_app_bar.dart';
import 'package:escan/widgets/custom_button.dart';
import 'package:escan/widgets/custom_drop_down.dart';
import 'package:escan/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AddNewPropertyHomeFactsScreen
    extends GetWidget<AddNewPropertyHomeFactsController> {
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
                      onTapArrowleft10();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "msg_add_new_propert".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 23, top: 32, right: 23, bottom: 32),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 1, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 6, bottom: 6),
                                    child: Text("lbl_home_facts".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtManropeSemiBold14Gray900)),
                                CustomButton(
                                    height: getVerticalSize(33),
                                    width: getHorizontalSize(79),
                                    text: "lbl_06_08".tr,
                                    fontStyle: ButtonFontStyle
                                        .ManropeSemiBold14WhiteA700_1)
                              ])),
                      Padding(
                          padding: getPadding(left: 1, top: 16),
                          child: Container(
                              height: getVerticalSize(6),
                              width: getHorizontalSize(327),
                              decoration: BoxDecoration(
                                  color: ColorConstant.blueGray50,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(3))),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(3)),
                                  child: LinearProgressIndicator(
                                      value: 0.75,
                                      backgroundColor: ColorConstant.blueGray50,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          ColorConstant.blue500))))),
                      Padding(
                          padding: getPadding(left: 1, top: 24),
                          child: Text("lbl_home_facts".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeBold18.copyWith(
                                  letterSpacing: getHorizontalSize(0.2)))),
                      Container(
                          width: getHorizontalSize(321),
                          margin: getMargin(left: 1, top: 9, right: 6),
                          child: Text("msg_this_helps_your".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManrope12.copyWith(
                                  letterSpacing: getHorizontalSize(0.4)))),
                      Padding(
                          padding: getPadding(left: 1, top: 19),
                          child: Text("lbl_type_property".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeMedium12Bluegray500
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.4)))),
                      CustomDropDown(
                          focusNode: FocusNode(),
                          icon: Container(
                              margin: getMargin(left: 30, right: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowdownGray900)),
                          hintText: "lbl_select_type".tr,
                          margin: getMargin(left: 1, top: 6),
                          variant: DropDownVariant.FillBluegray50,
                          fontStyle:
                              DropDownFontStyle.ManropeMedium14Bluegray500,
                          items: controller.addNewPropertyHomeFactsModelObj
                              .value.dropdownItemList.value,
                          onChanged: (value) {
                            controller.onSelected(value);
                          }),
                      Padding(
                          padding: getPadding(left: 1, top: 13, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 1),
                                                child: Text(
                                                    "msg_finished_sq_ft".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtManropeMedium12Bluegray500
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.4)))),
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgWarning,
                                                height: getSize(16),
                                                width: getSize(16),
                                                margin: getMargin(
                                                    left: 51, bottom: 2))
                                          ]),
                                      CustomTextFormField(
                                          width: getHorizontalSize(158),
                                          focusNode: FocusNode(),
                                          controller:
                                              controller.inputController,
                                          hintText: "lbl_0".tr,
                                          margin: getMargin(top: 6))
                                    ]),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_lot_size".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtManropeMedium12Bluegray500
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.4))),
                                      CustomTextFormField(
                                          width: getHorizontalSize(157),
                                          focusNode: FocusNode(),
                                          controller:
                                              controller.inputOneController,
                                          hintText: "lbl_0".tr,
                                          margin: getMargin(top: 7))
                                    ])
                              ])),
                      Padding(
                          padding: getPadding(left: 1, top: 17, right: 1),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_year_built".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtManropeMedium12Bluegray500
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.4))),
                                      CustomTextFormField(
                                          width: getHorizontalSize(158),
                                          focusNode: FocusNode(),
                                          controller:
                                              controller.inputTwoController,
                                          hintText: "lbl_0".tr,
                                          margin: getMargin(top: 7))
                                    ]),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("lbl_bedrooms".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtManropeMedium12Bluegray500
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.4))),
                                      CustomTextFormField(
                                          width: getHorizontalSize(157),
                                          focusNode: FocusNode(),
                                          controller:
                                              controller.inputThreeController,
                                          hintText: "lbl_0".tr,
                                          margin: getMargin(top: 7))
                                    ])
                              ])),
                      Padding(
                          padding: getPadding(left: 1, top: 17),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Padding(
                                        padding: getPadding(right: 6),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text("lbl_full_baths".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtManropeMedium12Bluegray500
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.4))),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgWarning,
                                                        height: getSize(16),
                                                        width: getSize(16),
                                                        margin: getMargin(
                                                            left: 83,
                                                            bottom: 1))
                                                  ]),
                                              CustomTextFormField(
                                                  width: getHorizontalSize(158),
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .inputFourController,
                                                  hintText: "lbl_0".tr,
                                                  margin: getMargin(top: 7))
                                            ]))),
                                Expanded(
                                    child: Padding(
                                        padding: getPadding(left: 6),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 1),
                                                        child: Text(
                                                            "msg_security_deposi"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtManropeMedium12Bluegray500
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.4)))),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgWarning,
                                                        height: getSize(16),
                                                        width: getSize(16),
                                                        margin: getMargin(
                                                            left: 42,
                                                            bottom: 2))
                                                  ]),
                                              CustomTextFormField(
                                                  width: getHorizontalSize(158),
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .priceController,
                                                  hintText: "lbl_02".tr,
                                                  margin: getMargin(top: 6))
                                            ])))
                              ])),
                      Padding(
                          padding: getPadding(left: 1, top: 18),
                          child: Text("lbl_monthly_rent".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeMedium12Bluegray500
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.4)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.priceOneController,
                          hintText: "lbl_02".tr,
                          margin: getMargin(left: 1, top: 6),
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
                          text: "lbl_next".tr,
                          shape: ButtonShape.RoundedBorder10,
                          padding: ButtonPadding.PaddingAll16,
                          fontStyle: ButtonFontStyle.ManropeBold16WhiteA700_1,
                          onTap: () {
                            onTapNext();
                          })
                    ]))));
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.addNewPropertyContactScreen,
    );
  }

  onTapArrowleft10() {
    Get.back();
  }
}

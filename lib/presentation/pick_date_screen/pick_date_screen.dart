import '../pick_date_screen/widgets/dates1_item_widget.dart';
import '../pick_date_screen/widgets/time1_item_widget.dart';
import 'controller/pick_date_controller.dart';
import 'models/dates1_item_model.dart';
import 'models/time1_item_model.dart';
import 'package:escan/core/app_export.dart';
import 'package:escan/widgets/custom_button.dart';
import 'package:escan/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class PickDateScreen extends GetWidget<PickDateController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 8, bottom: 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 40,
                          width: 40,
                          margin: getMargin(left: 24),
                          onTap: () {
                            onTapBtnArrowleft();
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleftGray900)),
                      Padding(
                          padding: getPadding(left: 30, top: 34),
                          child: Text("msg_request_a_home".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeBold18.copyWith(
                                  letterSpacing: getHorizontalSize(0.2)))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 24, top: 13, right: 24),
                              padding: getPadding(all: 4),
                              decoration: AppDecoration.fillBluegray50.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomButton(
                                        height: getVerticalSize(40),
                                        width: getHorizontalSize(159),
                                        text: "lbl_in_person".tr,
                                        variant:
                                            ButtonVariant.OutlineBluegray40014,
                                        shape: ButtonShape.RoundedBorder5,
                                        padding: ButtonPadding.PaddingT10,
                                        fontStyle: ButtonFontStyle
                                            .ManropeBold14Gray900_1,
                                        prefixWidget: Container(
                                            margin: getMargin(right: 10),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgHome20x20))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapRow();
                                        },
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  height: getSize(20),
                                                  width: getSize(20),
                                                  margin: getMargin(
                                                      left: 44,
                                                      top: 10,
                                                      bottom: 10)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 10,
                                                      top: 10,
                                                      right: 41,
                                                      bottom: 9),
                                                  child: Text("lbl_virtual".tr,
                                                      overflow: TextOverflow
                                                          .ellipsis))
                                            ]))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 24, top: 24, right: 24),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 5, bottom: 1),
                                        child: Text("lbl_january".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtManropeBold18
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2)))),
                                    Spacer(),
                                    CustomIconButton(
                                        height: 32,
                                        width: 32,
                                        variant:
                                            IconButtonVariant.OutlineGray300_1,
                                        shape: IconButtonShape.RoundedBorder5,
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowleft)),
                                    CustomIconButton(
                                        height: 32,
                                        width: 32,
                                        margin: getMargin(left: 16),
                                        variant:
                                            IconButtonVariant.OutlineGray300_1,
                                        shape: IconButtonShape.RoundedBorder5,
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowright))
                                  ]))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(112),
                              child: Obx(() => ListView.separated(
                                  padding: getPadding(left: 24, top: 16),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(12));
                                  },
                                  itemCount: controller.pickDateModelObj.value
                                      .dates1ItemList.value.length,
                                  itemBuilder: (context, index) {
                                    Dates1ItemModel model = controller
                                        .pickDateModelObj
                                        .value
                                        .dates1ItemList
                                        .value[index];
                                    return Dates1ItemWidget(model);
                                  })))),
                      Padding(
                          padding: getPadding(left: 24, top: 32),
                          child: Text("lbl_pick_a_time".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeBold18.copyWith(
                                  letterSpacing: getHorizontalSize(0.2)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(56),
                              child: Obx(() => ListView.separated(
                                  padding: getPadding(left: 24, top: 15),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(10));
                                  },
                                  itemCount: controller.pickDateModelObj.value
                                      .time1ItemList.value.length,
                                  itemBuilder: (context, index) {
                                    Time1ItemModel model = controller
                                        .pickDateModelObj
                                        .value
                                        .time1ItemList
                                        .value[index];
                                    return Time1ItemWidget(model);
                                  }))))
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
                          text: "lbl_schedule_tour".tr,
                          shape: ButtonShape.RoundedBorder10,
                          padding: ButtonPadding.PaddingAll16,
                          fontStyle: ButtonFontStyle.ManropeBold16WhiteA700_1,
                          onTap: () {
                            onTapScheduletour();
                          })
                    ]))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }

  onTapRow() {
    Get.toNamed(
      AppRoutes.selectVirtualAppScreen,
    );
  }

  onTapScheduletour() {
    Get.toNamed(
      AppRoutes.verifyPhoneNumberScreen,
    );
  }
}

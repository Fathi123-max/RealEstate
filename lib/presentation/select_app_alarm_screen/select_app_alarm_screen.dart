import 'controller/select_app_alarm_controller.dart';
import 'package:escan/core/app_export.dart';
import 'package:escan/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:escan/widgets/app_bar/appbar_subtitle.dart';
import 'package:escan/widgets/app_bar/custom_app_bar.dart';
import 'package:escan/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SelectAppAlarmScreen extends GetWidget<SelectAppAlarmController> {
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
                      onTapArrowleft14();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "msg_review_your_tou".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 32, right: 24, bottom: 32),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(
                                  left: 20, top: 16, right: 20, bottom: 16),
                              decoration: AppDecoration.outlineGray3002
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("msg_mighty_cinco_fa".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeExtraBold18
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2)))),
                                    Padding(
                                        padding: getPadding(top: 2),
                                        child: Row(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgLocation14x14,
                                              height: getSize(14),
                                              width: getSize(14),
                                              margin: getMargin(bottom: 2)),
                                          Padding(
                                              padding: getPadding(left: 4),
                                              child: Text(
                                                  "msg_jakarta_indone".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtManrope12Gray900
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.4))))
                                        ])),
                                    Padding(
                                        padding: getPadding(top: 11),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.gray300)),
                                    Padding(
                                        padding: getPadding(top: 17),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 2),
                                                  child: Text("lbl_date".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManropeSemiBold14)),
                                              Text("lbl_mon_april_4".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtManropeBold16
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.2)))
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 12),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("lbl_time".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManropeSemiBold14)),
                                              Text("lbl_4_00_4_45_pm".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtManropeBold16
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.2)))
                                            ]))
                                  ]))),
                      Container(
                          margin: getMargin(top: 24, bottom: 5),
                          padding: getPadding(
                              left: 16, top: 17, right: 16, bottom: 17),
                          decoration: AppDecoration.fillRed4000c.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgWarning24x24,
                                height: getSize(24),
                                width: getSize(24),
                                margin: getMargin(top: 16, bottom: 14)),
                            Expanded(
                                child: Padding(
                                    padding: getPadding(left: 16),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("msg_your_identity_i".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtManropeBold14Red400
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.2))),
                                          Container(
                                              width: getHorizontalSize(234),
                                              margin: getMargin(top: 1),
                                              child: RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text: "lbl_verify".tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .red400,
                                                            fontSize:
                                                                getFontSize(12),
                                                            fontFamily:
                                                                'Manrope',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.4),
                                                            decoration:
                                                                TextDecoration
                                                                    .underline)),
                                                    TextSpan(
                                                        text:
                                                            "msg_your_identity_b"
                                                                .tr,
                                                        style: TextStyle(
                                                            color: ColorConstant
                                                                .red400,
                                                            fontSize:
                                                                getFontSize(12),
                                                            fontFamily:
                                                                'Manrope',
                                                            fontWeight:
                                                                FontWeight.w200,
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.4)))
                                                  ]),
                                                  textAlign: TextAlign.left))
                                        ])))
                          ]))
                    ])),
            bottomNavigationBar: Container(
                width: double.maxFinite,
                padding: getPadding(all: 24),
                decoration: AppDecoration.outlineBluegray1000f,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                      child: CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_edit".tr,
                          margin: getMargin(right: 7),
                          variant: ButtonVariant.OutlineBlue500_3,
                          shape: ButtonShape.RoundedBorder10,
                          padding: ButtonPadding.PaddingAll16,
                          fontStyle: ButtonFontStyle.ManropeBold16Blue500_1)),
                  Expanded(
                      child: CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_schedule".tr,
                          margin: getMargin(left: 7),
                          shape: ButtonShape.RoundedBorder10,
                          padding: ButtonPadding.PaddingAll16,
                          fontStyle: ButtonFontStyle.ManropeBold16WhiteA700_1,
                          onTap: () {
                            onTapSchedule();
                          }))
                ]))));
  }

  onTapSchedule() {
    Get.toNamed(
      AppRoutes.confirmRequestScreen,
    );
  }

  onTapArrowleft14() {
    Get.back();
  }
}

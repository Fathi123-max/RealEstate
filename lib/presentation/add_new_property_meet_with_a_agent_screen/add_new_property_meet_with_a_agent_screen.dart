import '../add_new_property_meet_with_a_agent_screen/widgets/dates_item_widget.dart';
import '../add_new_property_meet_with_a_agent_screen/widgets/time_item_widget.dart';
import 'controller/add_new_property_meet_with_a_agent_controller.dart';
import 'models/dates_item_model.dart';
import 'models/time_item_model.dart';
import 'package:escan/core/app_export.dart';
import 'package:escan/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:escan/widgets/app_bar/appbar_subtitle.dart';
import 'package:escan/widgets/app_bar/custom_app_bar.dart';
import 'package:escan/widgets/custom_button.dart';
import 'package:escan/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class AddNewPropertyMeetWithAAgentScreen
    extends GetWidget<AddNewPropertyMeetWithAAgentController> {
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
                      onTapArrowleft6();
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "msg_add_new_propert".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 32, bottom: 32),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 24, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 8, bottom: 4),
                                    child: Text("msg_meet_with_a_age".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtManropeSemiBold14Gray900)),
                                CustomButton(
                                    height: getVerticalSize(33),
                                    width: getHorizontalSize(79),
                                    text: "lbl_02_08".tr,
                                    fontStyle: ButtonFontStyle
                                        .ManropeSemiBold14WhiteA700_1)
                              ])),
                      Padding(
                          padding: getPadding(left: 24, top: 16, right: 24),
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
                                      value: 0.25,
                                      backgroundColor: ColorConstant.blueGray50,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          ColorConstant.blue500))))),
                      Container(
                          margin: getMargin(left: 24, top: 24, right: 24),
                          padding: getPadding(
                              left: 16, top: 15, right: 16, bottom: 15),
                          decoration: AppDecoration.outlineGray3002.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10),
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            CustomIconButton(
                                height: 40,
                                width: 40,
                                margin: getMargin(top: 2, bottom: 2),
                                variant: IconButtonVariant.FillGray900,
                                padding: IconButtonPadding.PaddingAll12,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgCheckmark40x40)),
                            Padding(
                                padding:
                                    getPadding(left: 16, top: 3, right: 40),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("msg_property_addres".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtManropeBold14
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.2))),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("msg_woodland_st_10".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtManrope12
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.4))))
                                    ]))
                          ])),
                      Padding(
                          padding: getPadding(left: 24, top: 32, right: 24),
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
                                                    getHorizontalSize(0.2)))),
                                Spacer(),
                                CustomIconButton(
                                    height: 32,
                                    width: 32,
                                    variant: IconButtonVariant.OutlineGray300_1,
                                    shape: IconButtonShape.RoundedBorder5,
                                    child: CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowleftGray900)),
                                CustomIconButton(
                                    height: 32,
                                    width: 32,
                                    margin: getMargin(left: 16),
                                    variant: IconButtonVariant.OutlineGray300_1,
                                    shape: IconButtonShape.RoundedBorder5,
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowright))
                              ])),
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
                                  itemCount: controller
                                      .addNewPropertyMeetWithAAgentModelObj
                                      .value
                                      .datesItemList
                                      .value
                                      .length,
                                  itemBuilder: (context, index) {
                                    DatesItemModel model = controller
                                        .addNewPropertyMeetWithAAgentModelObj
                                        .value
                                        .datesItemList
                                        .value[index];
                                    return DatesItemWidget(model);
                                  })))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 24, top: 32),
                              child: Text("lbl_pick_a_time".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtManropeBold18.copyWith(
                                      letterSpacing: getHorizontalSize(0.2))))),
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
                                  itemCount: controller
                                      .addNewPropertyMeetWithAAgentModelObj
                                      .value
                                      .timeItemList
                                      .value
                                      .length,
                                  itemBuilder: (context, index) {
                                    TimeItemModel model = controller
                                        .addNewPropertyMeetWithAAgentModelObj
                                        .value
                                        .timeItemList
                                        .value[index];
                                    return TimeItemWidget(model);
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
      AppRoutes.addNewPropertyTimeToSellScreen,
    );
  }

  onTapArrowleft6() {
    Get.back();
  }
}

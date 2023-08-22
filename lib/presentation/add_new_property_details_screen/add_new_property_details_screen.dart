import '../add_new_property_details_screen/widgets/listestimateprice_item_widget.dart';
import 'controller/add_new_property_details_controller.dart';
import 'models/listestimateprice_item_model.dart';
import 'package:escan/core/app_export.dart';
import 'package:escan/widgets/custom_button.dart';
import 'package:escan/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class AddNewPropertyDetailsScreen
    extends GetWidget<AddNewPropertyDetailsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 33, right: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getSize(343),
                                  width: getSize(343),
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImage343x3431,
                                            height: getSize(343),
                                            width: getSize(343),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(20)),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(left: 24),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomIconButton(
                                                          height: 40,
                                                          width: 40,
                                                          variant:
                                                              IconButtonVariant
                                                                  .OutlineGray5066,
                                                          onTap: () {
                                                            onTapBtnArrowleft();
                                                          },
                                                          child: CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgArrowleft)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 209),
                                                          child: Text(
                                                              "msg_primary_apartme"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtManropeExtraBold24WhiteA700)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1),
                                                          child: Text(
                                                              "msg_701_ocean_avenue"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtManropeMedium14))
                                                    ])))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 32),
                                  child: Row(children: [
                                    CustomIconButton(
                                        height: 34,
                                        width: 34,
                                        variant: IconButtonVariant.FillBlue500,
                                        shape: IconButtonShape.RoundedBorder5,
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgIcon20x20)),
                                    Padding(
                                        padding: getPadding(left: 5),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_bathroom2".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtManrope10
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.4))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text(
                                                          "lbl_2_rooms".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtManropeBold12
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.4)))))
                                            ])),
                                    CustomIconButton(
                                        height: 34,
                                        width: 34,
                                        margin: getMargin(left: 6),
                                        variant: IconButtonVariant.FillBlue500,
                                        shape: IconButtonShape.RoundedBorder5,
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgLock20x20)),
                                    Padding(
                                        padding: getPadding(left: 8),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_bedroom2".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtManrope10
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.4))),
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("lbl_3_rooms".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManropeBold12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.4))))
                                            ])),
                                    CustomIconButton(
                                        height: 34,
                                        width: 34,
                                        margin: getMargin(left: 25),
                                        variant: IconButtonVariant.FillBlue500,
                                        shape: IconButtonShape.RoundedBorder5,
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgOffer20x20)),
                                    Padding(
                                        padding: getPadding(left: 8, top: 2),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_square".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtManrope10
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.4))),
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text("lbl_1_880_ft".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManropeBold12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.4))))
                                            ]))
                                  ])),
                              CustomButton(
                                  height: getVerticalSize(56),
                                  text: "msg_add_new_propert".tr,
                                  margin: getMargin(left: 8, top: 31, right: 8),
                                  variant: ButtonVariant.OutlineBlue500_1,
                                  shape: ButtonShape.RoundedBorder10,
                                  padding: ButtonPadding.PaddingT17,
                                  fontStyle:
                                      ButtonFontStyle.ManropeBold14Blue500_1,
                                  prefixWidget: Container(
                                      margin: getMargin(right: 10),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgEdit))),
                              Padding(
                                  padding: getPadding(left: 8, top: 32),
                                  child: Text("lbl_information".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtManropeBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2)))),
                              Container(
                                  height: getVerticalSize(114),
                                  child: Obx(() => ListView.separated(
                                      padding: getPadding(
                                          left: 8, top: 15, right: 8),
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(12));
                                      },
                                      itemCount: controller
                                          .addNewPropertyDetailsModelObj
                                          .value
                                          .listestimatepriceItemList
                                          .value
                                          .length,
                                      itemBuilder: (context, index) {
                                        ListestimatepriceItemModel model =
                                            controller
                                                .addNewPropertyDetailsModelObj
                                                .value
                                                .listestimatepriceItemList
                                                .value[index];
                                        return ListestimatepriceItemWidget(
                                            model);
                                      }))),
                              Container(
                                  margin: getMargin(left: 8, top: 16, right: 8),
                                  padding: getPadding(
                                      left: 16, top: 25, right: 16, bottom: 25),
                                  decoration: AppDecoration.fillBluegray5099
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(left: 10),
                                            child: Text("lbl_relax_estimate".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtManropeSemiBold12Bluegray500
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.4)))),
                                        Padding(
                                            padding:
                                                getPadding(left: 8, top: 8),
                                            child: Text("lbl_6_345_00".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtManropeExtraBold24Gray900)),
                                        Padding(
                                            padding:
                                                getPadding(left: 8, top: 21),
                                            child: Row(children: [
                                              CustomButton(
                                                  height: getVerticalSize(32),
                                                  width: getHorizontalSize(66),
                                                  text: "lbl_1_year".tr,
                                                  variant: ButtonVariant
                                                      .OutlineBluegray500,
                                                  shape: ButtonShape
                                                      .RoundedBorder5,
                                                  fontStyle: ButtonFontStyle
                                                      .ManropeMedium12Gray900),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 24,
                                                      top: 8,
                                                      bottom: 6),
                                                  child: Text("lbl_5_years2".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManropeMedium12Bluegray500
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.4))))
                                            ])),
                                        Padding(
                                            padding: getPadding(top: 24),
                                            child: Row(children: [
                                              Expanded(
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                    Container(
                                                        height: getVerticalSize(
                                                            150),
                                                        width:
                                                            getHorizontalSize(
                                                                249),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .center,
                                                            children: [
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgLine,
                                                                  height:
                                                                      getVerticalSize(
                                                                          147),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          249),
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child:
                                                                      Container(
                                                                          padding: getPadding(
                                                                              left: 57,
                                                                              top: 12,
                                                                              right: 58,
                                                                              bottom: 12),
                                                                          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgGroup4347), fit: BoxFit.cover)),
                                                                          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                            CustomButton(
                                                                                height: getVerticalSize(24),
                                                                                width: getHorizontalSize(56),
                                                                                text: "lbl_510_00".tr,
                                                                                variant: ButtonVariant.FillGray900,
                                                                                shape: ButtonShape.RoundedBorder5,
                                                                                fontStyle: ButtonFontStyle.SFProDisplayMedium10Bluegray50),
                                                                            Container(
                                                                                height: getVerticalSize(40),
                                                                                width: getHorizontalSize(8),
                                                                                margin: getMargin(right: 24, bottom: 52),
                                                                                child: Stack(alignment: Alignment.bottomCenter, children: [
                                                                                  Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(right: 3), child: SizedBox(height: getVerticalSize(48), child: VerticalDivider(width: getHorizontalSize(1), thickness: getVerticalSize(1), color: ColorConstant.blue500)))),
                                                                                  Align(alignment: Alignment.bottomCenter, child: Container(height: getSize(8), width: getSize(8), decoration: BoxDecoration(color: ColorConstant.blueGray50, borderRadius: BorderRadius.circular(getHorizontalSize(4)), border: Border.all(color: ColorConstant.blue500, width: getHorizontalSize(2)))))
                                                                                ]))
                                                                          ])))
                                                            ])),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 10),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text("lbl_s2".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtSFProDisplayRegular12
                                                                      .copyWith(
                                                                          letterSpacing:
                                                                              getHorizontalSize(0.3))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              32),
                                                                  child: Text(
                                                                      "lbl_m"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtSFProDisplayRegular12
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.3)))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              32),
                                                                  child: Text(
                                                                      "lbl_t"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtSFProDisplayRegular12
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.3)))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              32),
                                                                  child: Text(
                                                                      "lbl_w"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtSFProDisplayRegular12
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.3)))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              32),
                                                                  child: Text(
                                                                      "lbl_t"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtSFProDisplayBold12
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.3)))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              32),
                                                                  child: Text(
                                                                      "lbl_f"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtSFProDisplayRegular12
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.3)))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              32),
                                                                  child: Text(
                                                                      "lbl_s2"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtSFProDisplayRegular12
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.3))))
                                                            ]))
                                                  ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 17,
                                                      top: 5,
                                                      bottom: 5),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("lbl_4k".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtSFProDisplayRegular12
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.3))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 35),
                                                            child: Text(
                                                                "lbl_3k".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtSFProDisplayRegular12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.3)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 35),
                                                            child: Text(
                                                                "lbl_2k".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtSFProDisplayRegular12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.3)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 35),
                                                            child: Text(
                                                                "lbl_1".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtSFProDisplayRegular12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.3))))
                                                      ]))
                                            ]))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 8, top: 34),
                                  child: Text("msg_nearby_properti".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtManropeBold18.copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2)))),
                              Container(
                                  height: getVerticalSize(180),
                                  width: getHorizontalSize(327),
                                  margin: getMargin(left: 8, top: 13),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImg418x3271,
                                            height: getVerticalSize(180),
                                            width: getHorizontalSize(327),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(10)),
                                            alignment: Alignment.center),
                                        CustomIconButton(
                                            height: 36,
                                            width: 36,
                                            margin:
                                                getMargin(top: 16, right: 16),
                                            variant: IconButtonVariant
                                                .OutlineBluegray50_1,
                                            alignment: Alignment.topRight,
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgClock))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 8, top: 17, right: 8),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("msg_mighty_cinco_fa".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtManropeExtraBold18
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.2))),
                                              Padding(
                                                  padding: getPadding(top: 9),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgLocation,
                                                        height: getSize(14),
                                                        width: getSize(14),
                                                        margin: getMargin(
                                                            bottom: 2)),
                                                    Padding(
                                                        padding:
                                                            getPadding(left: 4),
                                                        child: Text(
                                                            "msg_jakarta_indone"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtManrope12Gray900
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.4))))
                                                  ]))
                                            ]),
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_price".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtManrope12
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.4))),
                                              Padding(
                                                  padding: getPadding(top: 10),
                                                  child: Text("lbl_436".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtManropeExtraBold18Blue500
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.2))))
                                            ])
                                      ]))
                            ])))),
            bottomNavigationBar: Container(
                padding: getPadding(all: 24),
                decoration: AppDecoration.outlineBluegray1000f,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_contact_agent".tr,
                          shape: ButtonShape.RoundedBorder10,
                          padding: ButtonPadding.PaddingAll16,
                          fontStyle: ButtonFontStyle.ManropeBold16WhiteA700_1)
                    ]))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}

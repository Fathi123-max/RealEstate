import 'controller/home_listing_controller.dart';
import 'package:escan/core/app_export.dart';
import 'package:escan/presentation/home_page/home_page.dart';
import 'package:escan/presentation/home_search_page/home_search_page.dart';
import 'package:escan/presentation/message_page/message_page.dart';
import 'package:escan/presentation/my_home_page/my_home_page.dart';
import 'package:escan/presentation/profile_page/profile_page.dart';
import 'package:escan/widgets/app_bar/appbar_edittext.dart';
import 'package:escan/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:escan/widgets/app_bar/custom_app_bar.dart';
import 'package:escan/widgets/custom_bottom_bar.dart';
import 'package:escan/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomeListingScreen extends GetWidget<HomeListingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                decoration: AppDecoration.fillGray50,
                child: Stack(alignment: Alignment.topCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgMapsiclemap,
                      height: getVerticalSize(693),
                      width: getHorizontalSize(375),
                      alignment: Alignment.topCenter),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(left: 2, top: 24, right: 8),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(48),
                                    title: Obx(() => AppbarEdittext(
                                        margin: getMargin(left: 24),
                                        hintText: "msg_360_stillwater".tr,
                                        controller:
                                            controller.searchController)),
                                    actions: [
                                      AppbarIconbutton2(
                                          svgPath: ImageConstant.imgMenu,
                                          margin: getMargin(left: 8, right: 24))
                                    ]),
                                Container(
                                    height: getVerticalSize(587),
                                    width: getHorizontalSize(365),
                                    margin: getMargin(top: 18),
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 34),
                                                            child: Row(
                                                                children: [
                                                                  CustomButton(
                                                                      height:
                                                                          getVerticalSize(
                                                                              34),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              82),
                                                                      text: "lbl_120_00"
                                                                          .tr,
                                                                      margin: getMargin(
                                                                          top:
                                                                              2),
                                                                      variant:
                                                                          ButtonVariant
                                                                              .OutlineGray300),
                                                                  CustomButton(
                                                                      height:
                                                                          getVerticalSize(
                                                                              34),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              83),
                                                                      text: "lbl_100_00"
                                                                          .tr,
                                                                      margin: getMargin(
                                                                          left:
                                                                              77,
                                                                          bottom:
                                                                              2),
                                                                      variant:
                                                                          ButtonVariant
                                                                              .OutlineGray300)
                                                                ]))),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 19),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              CustomButton(
                                                                  height:
                                                                      getVerticalSize(
                                                                          34),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          82),
                                                                  text:
                                                                      "lbl_165_00"
                                                                          .tr,
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              9),
                                                                  variant:
                                                                      ButtonVariant
                                                                          .OutlineGray300),
                                                              CustomButton(
                                                                  height:
                                                                      getVerticalSize(
                                                                          34),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          82),
                                                                  text:
                                                                      "lbl_130_00"
                                                                          .tr,
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              85,
                                                                          bottom:
                                                                              9),
                                                                  variant:
                                                                      ButtonVariant
                                                                          .OutlineGray300)
                                                            ])),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 9,
                                                                top: 8,
                                                                right: 18),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  CustomButton(
                                                                      height:
                                                                          getVerticalSize(
                                                                              34),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              82),
                                                                      text: "lbl_150_00"
                                                                          .tr,
                                                                      margin: getMargin(
                                                                          bottom:
                                                                              26),
                                                                      variant:
                                                                          ButtonVariant
                                                                              .OutlineGray300),
                                                                  CustomButton(
                                                                      height:
                                                                          getVerticalSize(
                                                                              34),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              82),
                                                                      text: "lbl_142_00"
                                                                          .tr,
                                                                      margin: getMargin(
                                                                          left:
                                                                              42,
                                                                          top:
                                                                              26),
                                                                      variant:
                                                                          ButtonVariant
                                                                              .OutlineGray300),
                                                                  CustomButton(
                                                                      height:
                                                                          getVerticalSize(
                                                                              34),
                                                                      width:
                                                                          getHorizontalSize(
                                                                              82),
                                                                      text: "lbl_165_00"
                                                                          .tr,
                                                                      margin: getMargin(
                                                                          left:
                                                                              50,
                                                                          top:
                                                                              12,
                                                                          bottom:
                                                                              14),
                                                                      variant:
                                                                          ButtonVariant
                                                                              .OutlineGray300)
                                                                ]))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 50,
                                                            top: 13,
                                                            right: 21),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              CustomButton(
                                                                  height:
                                                                      getVerticalSize(
                                                                          34),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          81),
                                                                  text:
                                                                      "lbl_125_00"
                                                                          .tr,
                                                                  margin:
                                                                      getMargin(
                                                                          bottom:
                                                                              22),
                                                                  variant:
                                                                      ButtonVariant
                                                                          .OutlineGray300),
                                                              Spacer(),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgLocation32x32,
                                                                  height:
                                                                      getSize(
                                                                          32),
                                                                  width:
                                                                      getSize(
                                                                          32),
                                                                  margin: getMargin(
                                                                      top: 22,
                                                                      bottom:
                                                                          2)),
                                                              CustomButton(
                                                                  height:
                                                                      getVerticalSize(
                                                                          34),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          80),
                                                                  text:
                                                                      "lbl_110_00"
                                                                          .tr,
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              46,
                                                                          top:
                                                                              22),
                                                                  variant:
                                                                      ButtonVariant
                                                                          .OutlineGray300)
                                                            ])),
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 24, right: 2),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          82),
                                                                  margin: getMargin(
                                                                      top: 5,
                                                                      bottom:
                                                                          5),
                                                                  padding: getPadding(
                                                                      left: 16,
                                                                      top: 7,
                                                                      right: 16,
                                                                      bottom:
                                                                          7),
                                                                  decoration: AppDecoration
                                                                      .txtOutlineGray300
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .txtCircleBorder17),
                                                                  child: Text(
                                                                      "lbl_120_00"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtManropeBold12
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.4)))),
                                                              Container(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          77),
                                                                  margin: getMargin(
                                                                      bottom:
                                                                          10),
                                                                  padding: getPadding(
                                                                      left: 16,
                                                                      top: 7,
                                                                      right: 16,
                                                                      bottom:
                                                                          7),
                                                                  decoration: AppDecoration
                                                                      .txtOutlineGray300
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .txtCircleBorder17),
                                                                  child: Text(
                                                                      "lbl_90_00"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtManropeBold12
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.4)))),
                                                              Container(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          76),
                                                                  margin: getMargin(
                                                                      top: 10),
                                                                  padding: getPadding(
                                                                      left: 16,
                                                                      top: 7,
                                                                      right: 16,
                                                                      bottom:
                                                                          7),
                                                                  decoration: AppDecoration
                                                                      .txtOutlineGray300
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .txtCircleBorder17),
                                                                  child: Text(
                                                                      "lbl_95_00"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtManropeBold12
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.4))))
                                                            ])),
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 26, right: 39),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              CustomButton(
                                                                  height:
                                                                      getVerticalSize(
                                                                          34),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          81),
                                                                  text:
                                                                      "lbl_135_00"
                                                                          .tr,
                                                                  margin:
                                                                      getMargin(
                                                                          bottom:
                                                                              2),
                                                                  variant:
                                                                      ButtonVariant
                                                                          .OutlineGray300),
                                                              CustomButton(
                                                                  height:
                                                                      getVerticalSize(
                                                                          34),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          76),
                                                                  text:
                                                                      "lbl_70_00"
                                                                          .tr,
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              52,
                                                                          top:
                                                                              2),
                                                                  variant:
                                                                      ButtonVariant
                                                                          .OutlineGray300)
                                                            ])),
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 38, right: 14),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              CustomButton(
                                                                  height:
                                                                      getVerticalSize(
                                                                          34),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          81),
                                                                  text:
                                                                      "lbl_170_00"
                                                                          .tr,
                                                                  margin:
                                                                      getMargin(
                                                                          bottom:
                                                                              18),
                                                                  variant:
                                                                      ButtonVariant
                                                                          .OutlineGray300),
                                                              CustomButton(
                                                                  height:
                                                                      getVerticalSize(
                                                                          34),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          85),
                                                                  text:
                                                                      "lbl_200_00"
                                                                          .tr,
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              63,
                                                                          top:
                                                                              18),
                                                                  variant:
                                                                      ButtonVariant
                                                                          .OutlineGray300)
                                                            ])),
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 54, right: 1),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              CustomButton(
                                                                  height:
                                                                      getVerticalSize(
                                                                          34),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          84),
                                                                  text:
                                                                      "lbl_220_00"
                                                                          .tr,
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              1),
                                                                  variant:
                                                                      ButtonVariant
                                                                          .OutlineGray300),
                                                              CustomButton(
                                                                  height:
                                                                      getVerticalSize(
                                                                          34),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          81),
                                                                  text:
                                                                      "lbl_122_00"
                                                                          .tr,
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              66,
                                                                          bottom:
                                                                              1),
                                                                  variant:
                                                                      ButtonVariant
                                                                          .OutlineGray300)
                                                            ]))
                                                  ])),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                  padding: getPadding(left: 14),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        GestureDetector(
                                                            onTap: () {
                                                              onTapSatelite();
                                                            },
                                                            child: Container(
                                                                padding:
                                                                    getPadding(
                                                                        all: 8),
                                                                decoration: AppDecoration
                                                                    .outlineGray3003
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder10),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgGlobe,
                                                                          height: getSize(
                                                                              20),
                                                                          width:
                                                                              getSize(20)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  5),
                                                                          child: Text(
                                                                              "lbl_satelite".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtManropeMedium10.copyWith(letterSpacing: getHorizontalSize(0.4))))
                                                                    ]))),
                                                        GestureDetector(
                                                            onTap: () {
                                                              onTapDraw();
                                                            },
                                                            child: Container(
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            16),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            15,
                                                                        top: 8,
                                                                        right:
                                                                            15,
                                                                        bottom:
                                                                            8),
                                                                decoration: AppDecoration
                                                                    .outlineGray3003
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder10),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgCheckmark20x20,
                                                                          height: getSize(
                                                                              20),
                                                                          width:
                                                                              getSize(20)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  5),
                                                                          child: Text(
                                                                              "lbl_draw".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtManropeMedium10.copyWith(letterSpacing: getHorizontalSize(0.4))))
                                                                    ]))),
                                                        Container(
                                                            margin: getMargin(
                                                                top: 16),
                                                            padding: getPadding(
                                                                left: 9,
                                                                top: 7,
                                                                right: 9,
                                                                bottom: 7),
                                                            decoration: AppDecoration
                                                                .outlineGray3003
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder10),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgRewind,
                                                                      height:
                                                                          getSize(
                                                                              20),
                                                                      width: getSize(
                                                                          20)),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              6),
                                                                      child: Text(
                                                                          "lbl_nearby"
                                                                              .tr,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style: AppStyle
                                                                              .txtManropeMedium10
                                                                              .copyWith(letterSpacing: getHorizontalSize(0.4))))
                                                                ]))
                                                      ])))
                                        ]))
                              ])))
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Message:
        return AppRoutes.messagePage;
      case BottomBarEnum.Discover:
        return AppRoutes.homeSearchPage;
      case BottomBarEnum.Myhome:
        return AppRoutes.myHomePage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.messagePage:
        return MessagePage();
      case AppRoutes.homeSearchPage:
        return HomeSearchPage();
      case AppRoutes.myHomePage:
        return MyHomePage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }

  onTapSatelite() {
    Get.toNamed(
      AppRoutes.homeListingSateliteScreen,
    );
  }

  onTapDraw() {
    Get.toNamed(
      AppRoutes.homeListingDrawScreen,
    );
  }
}

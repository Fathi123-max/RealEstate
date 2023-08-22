import 'controller/onboarding_controller.dart';
import 'package:escan/core/app_export.dart';
import 'package:escan/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends GetWidget<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.blueGray50,
            body: Container(
                width: size.width,
                height: size.height,
                padding: getPadding(bottom: 56),
                decoration: BoxDecoration(
                    color: ColorConstant.blueGray50,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgOnboarding),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 26, top: 40, right: 26, bottom: 40),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Spacer(),
                          Container(
                              decoration: AppDecoration.txtOutlineBlack9003f,
                              child: Text("msg_enjoy_the_beaut".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtManropeExtraBold24)),
                          Container(
                              width: getHorizontalSize(318),
                              margin: getMargin(top: 17),
                              child: Text("msg_lorem_ipsum_is".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtManropeMedium14)),
                          CustomImageView(
                              svgPath: ImageConstant.imgSliderindicator,
                              height: getVerticalSize(6),
                              width: getHorizontalSize(42),
                              margin: getMargin(top: 29))
                        ]))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(56),
                text: "lbl_get_started".tr,
                margin: getMargin(left: 24, right: 24, bottom: 58),
                shape: ButtonShape.RoundedBorder10,
                padding: ButtonPadding.PaddingAll16,
                fontStyle: ButtonFontStyle.ManropeBold16Bluegray50,
                onTap: () {
                  onTapGetstarted();
                })));
  }

  onTapGetstarted() {
    Get.toNamed(
      AppRoutes.signInScreen,
    );
  }
}

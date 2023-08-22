import 'controller/sign_in_controller.dart';
import 'package:escan/core/app_export.dart';
import 'package:escan/widgets/custom_button.dart';
import 'package:escan/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:escan/data/models/login/post_login_req.dart';
import 'package:escan/data/models/login/post_login_resp.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:escan/domain/googleauth/google_auth_helper.dart';
import 'package:escan/domain/facebookauth/facebook_auth_helper.dart';

class SignInScreen extends GetWidget<SignInController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 39, right: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("lbl_welcome_back".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeExtraBold24Gray900)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(top: 9),
                              child: Text("msg_sign_in_to_your".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtManrope16.copyWith(
                                      letterSpacing: getHorizontalSize(0.3))))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.phonenumberController,
                          hintText: "lbl_phone_number".tr,
                          margin: getMargin(top: 20),
                          textInputType: TextInputType.phone),
                      Obx(() => CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: controller.passwordController,
                          hintText: "lbl_password".tr,
                          margin: getMargin(top: 16),
                          padding: TextFormFieldPadding.PaddingT14,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          suffix: InkWell(
                              onTap: () {
                                controller.isShowPassword.value =
                                    !controller.isShowPassword.value;
                              },
                              child: Container(
                                  margin: getMargin(
                                      left: 30, top: 15, right: 16, bottom: 14),
                                  child: CustomImageView(
                                      svgPath: controller.isShowPassword.value
                                          ? ImageConstant.imgEye
                                          : ImageConstant.imgEye))),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(49)),
                          isObscureText: controller.isShowPassword.value)),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_sign_in".tr,
                          margin: getMargin(top: 20),
                          shape: ButtonShape.RoundedBorder10,
                          padding: ButtonPadding.PaddingAll16,
                          fontStyle: ButtonFontStyle.ManropeBold16Gray50_1,
                          onTap: () {
                            onTapSignin();
                          }),
                      Padding(
                          padding: getPadding(top: 10),
                          child: Text("msg_forgot_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeSemiBold14)),
                      Spacer(),
                      Text("msg_or_continue_wit".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtManrope16
                              .copyWith(letterSpacing: getHorizontalSize(0.3))),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_google".tr,
                          margin: getMargin(top: 10),
                          variant: ButtonVariant.OutlineBluegray500,
                          shape: ButtonShape.RoundedBorder10,
                          padding: ButtonPadding.PaddingT17,
                          fontStyle: ButtonFontStyle.ManropeSemiBold16Gray900,
                          prefixWidget: Container(
                              margin: getMargin(right: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgGoogle)),
                          onTap: () {
                            onTapGoogle();
                          }),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_facebook".tr,
                          margin: getMargin(top: 10),
                          variant: ButtonVariant.OutlineBluegray500,
                          shape: ButtonShape.RoundedBorder10,
                          padding: ButtonPadding.PaddingT17,
                          fontStyle: ButtonFontStyle.ManropeSemiBold16Gray900,
                          prefixWidget: Container(
                              margin: getMargin(right: 12),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgFacebook,
                                  height: getSize(24),
                                  width: getSize(24))),
                          onTap: () {
                            onTapFacebook();
                          }),
                      Padding(
                          padding: getPadding(left: 42, top: 30, right: 41),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("msg_don_t_have_an_a2".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtManrope16.copyWith(
                                        letterSpacing: getHorizontalSize(0.3))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtSignup();
                                    },
                                    child: Padding(
                                        padding: getPadding(left: 4, top: 1),
                                        child: Text("lbl_sign_up".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeExtraBold16
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2)))))
                              ]))
                    ]))));
  }

  Future<void> onTapSignin() async {
    PostLoginReq postLoginReq = PostLoginReq(
      username: controller.phonenumberController.text,
      password: controller.passwordController.text,
    );
    try {
      await controller.callCreateLogin(
        postLoginReq.toJson(),
      );
      _onOnTapSignInSuccess();
    } on PostLoginResp {
      _onOnTapSignInError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  void _onOnTapSignInSuccess() {
    Get.offNamed(AppRoutes.homeContainerScreen, arguments: {
      NavigationArgs.token: controller.postLoginResp.data!.token!,
      NavigationArgs.id: controller.postLoginResp.data!.id!
    });
  }

  void _onOnTapSignInError() {
    Fluttertoast.showToast(
      msg: "Invalid username or password!",
    );
  }

  onTapGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapFacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapTxtSignup() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}

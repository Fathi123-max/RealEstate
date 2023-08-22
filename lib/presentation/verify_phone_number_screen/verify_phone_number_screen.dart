import 'controller/verify_phone_number_controller.dart';
import 'package:escan/core/app_export.dart';
import 'package:escan/widgets/custom_button.dart';
import 'package:escan/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyPhoneNumberScreen extends GetWidget<VerifyPhoneNumberController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 23, top: 8, right: 23, bottom: 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 40,
                          width: 40,
                          margin: getMargin(left: 1),
                          onTap: () {
                            onTapBtnArrowleft();
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      Padding(
                          padding: getPadding(left: 1, top: 34),
                          child: Text("msg_verify_phone_nu".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeExtraBold24Gray900)),
                      Container(
                          width: getHorizontalSize(299),
                          margin: getMargin(left: 1, top: 7, right: 28),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_we_send_a_code2".tr,
                                    style: TextStyle(
                                        color: ColorConstant.blueGray500,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Manrope',
                                        fontWeight: FontWeight.w600)),
                                TextSpan(
                                    text: "msg_783_enter".tr,
                                    style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Manrope',
                                        fontWeight: FontWeight.w600))
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: getPadding(left: 1, top: 47),
                          child: Obx(() => PinCodeTextField(
                              appContext: context,
                              controller: controller.otpController.value,
                              length: 5,
                              obscureText: false,
                              obscuringCharacter: '*',
                              keyboardType: TextInputType.number,
                              autoDismissKeyboard: true,
                              enableActiveFill: true,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              onChanged: (value) {},
                              textStyle: TextStyle(
                                  color: ColorConstant.gray900,
                                  fontSize: getFontSize(24),
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.w800),
                              pinTheme: PinTheme(
                                  fieldHeight: getHorizontalSize(56),
                                  fieldWidth: getHorizontalSize(56),
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(12)),
                                  selectedFillColor: ColorConstant.blueGray50,
                                  activeFillColor: ColorConstant.blueGray50,
                                  inactiveFillColor: ColorConstant.blueGray50,
                                  inactiveColor:
                                      ColorConstant.fromHex("#1212121D"),
                                  selectedColor:
                                      ColorConstant.fromHex("#1212121D"),
                                  activeColor:
                                      ColorConstant.fromHex("#1212121D"))))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 33),
                              child: Text("lbl_resend_code".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtManropeSemiBold16Blue500
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2))))),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_confirm".tr,
                          margin: getMargin(left: 1, top: 50, bottom: 5),
                          shape: ButtonShape.RoundedBorder10,
                          padding: ButtonPadding.PaddingAll16,
                          fontStyle: ButtonFontStyle.ManropeBold16WhiteA700_1,
                          onTap: () {
                            onTapConfirm();
                          })
                    ]))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }

  onTapConfirm() {
    Get.toNamed(
      AppRoutes.selectVirtualAppScreen,
    );
  }
}

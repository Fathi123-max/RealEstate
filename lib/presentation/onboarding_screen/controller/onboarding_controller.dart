import 'package:escan/core/app_export.dart';
import 'package:escan/presentation/onboarding_screen/models/onboarding_model.dart';

class OnboardingController extends GetxController {
  Rx<OnboardingModel> onboardingModelObj = OnboardingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

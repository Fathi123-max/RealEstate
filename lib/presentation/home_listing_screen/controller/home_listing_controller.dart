import 'package:escan/core/app_export.dart';
import 'package:escan/presentation/home_listing_screen/models/home_listing_model.dart';
import 'package:escan/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomeListingController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<HomeListingModel> homeListingModelObj = HomeListingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}

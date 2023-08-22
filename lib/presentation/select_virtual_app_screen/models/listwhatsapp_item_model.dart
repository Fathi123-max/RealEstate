import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListwhatsappItemModel {
  Rx<String> whatsappOneTxt = Rx("Whatsapp");

  Rx<TextEditingController> streetaddressController =
      Rx(TextEditingController());

  Rx<String>? id = Rx("");
}

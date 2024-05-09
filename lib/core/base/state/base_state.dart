import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BaseState <T extends StatefulWidget> extends State<T>{
  ThemeData get themeData => Theme.of(context);
  double dynamicHeight(double value) => Get.height * value;
  double dynamicWidth(double value) => Get.width * value;
}
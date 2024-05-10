import 'package:flutter/material.dart';
import 'package:flutter_template/core/components/button/custom_button.dart';
import 'package:flutter_template/core/constants/app_constants.dart';
import 'package:get/get.dart';

Future<dynamic> normalShowDialog(context, String uyariText, Color uyariColor, butonText) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16.0))),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 24),
          Text(uyariText, textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: uyariColor),),
          const SizedBox(height: 24),
          GestureDetector(
            onTap:(){
              Get.back();
            },
            child: butonContainer(butonText, kPrimary),
          ),
        ],
      ),
    ),
  );
}
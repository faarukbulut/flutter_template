import 'package:flutter/material.dart';
import 'package:flutter_template/core/constants/app_constants.dart';
import 'package:get/get.dart';

InputDecoration textFieldNormalDecoration(String hintText){
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 15.0),
    hintText: hintText,
    hintStyle: const TextStyle(fontSize: 14),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Color(0xffe5e7f2),
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Color(0xffe5e7f2),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Color(0xffe5e7f2),
      ),
    ),
    filled: true,
    fillColor: const Color(0xffe5e7f2),
  );
}

InputDecoration textFieldSifreDecoration(String hintText, Function sifreDurumDegistir, RxBool sifreDurum){
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
    hintText: hintText,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Color(0xffe5e7f2),
      ),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Color(0xffe5e7f2),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Color(0xffe5e7f2),
      ),
    ),
    filled: true,
    fillColor: const Color(0xffe5e7f2),
    suffixIcon: IconButton(
      onPressed: (){sifreDurumDegistir();},
      icon: Icon(sifreDurum.value == true ? Icons.visibility : Icons.visibility_off, color: AppConstants.kPrimary),
    ),
  );
}
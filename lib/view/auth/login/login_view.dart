import 'package:flutter/material.dart';
import 'package:flutter_template/core/components/button/custom_button.dart';
import 'package:flutter_template/core/components/textfield/custom_textfield.dart';
import 'package:flutter_template/core/constants/app_constants.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  var sifreGorunum = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          
              TextFormField(
                decoration: textFieldNormalDecoration("Kullanıcı Adı"),
              ),
          
              const SizedBox(height: 8),
          
              Obx(() =>
                TextFormField(
                  obscureText: sifreGorunum.value,
                  decoration: textFieldSifreDecoration("Şifre",(){ sifreGorunum.value = !sifreGorunum.value; }, sifreGorunum),
                ),
              ),
          
              const SizedBox(height: 8),
          
              customNormalButon((){}, 'Giriş Yap', AppConstants.kPrimary)
          
            ],
          ),
        ),
      ),
    );
  }
}
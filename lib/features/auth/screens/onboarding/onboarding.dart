import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:login_design3/features/auth/screens/login/login_page.dart';
import 'package:login_design3/features/auth/screens/signUp/signup_page.dart';
import 'package:login_design3/utilities/constant/colors.dart';
import 'package:login_design3/utilities/constant/images.dart';
import 'package:login_design3/utilities/constant/sizes.dart';
import 'package:login_design3/utilities/constant/texts.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _LoginPageState();
}

class _LoginPageState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: AppColors.greenGradient),
        child: Padding(
          padding: AppSize.imagePaddin,
          child: Column(
            children: [
              Image.asset(AppImages.logoImage),
              const SizedBox(height: 30),
              Text(
                "Welcome Back",
                style: TextStyle(
                  color: AppColors.whiteColors,
                  fontSize: 30,
                  fontWeight: AppSize.apptextFontweight,
                ),
              ),
              const SizedBox(height: 30),

              GestureDetector(
                onTap: () {
                  Get.to(() => LoginPage());
                },
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.whiteColors),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      AppText.loginText,
                      style: TextStyle(
                        color: AppColors.whiteColors,
                        fontSize: 20,
                        fontWeight: AppSize.apptextFontweight,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Get.to(() => SignupPage());
                },
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColors,

                    border: Border.all(color: AppColors.whiteColors),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      AppText.signUpText,
                      style: TextStyle(
                        color: AppColors.blackColors,
                        fontSize: 20,
                        fontWeight: AppSize.apptextFontweight,
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Text(
                "Sign With Social Media",
                style: TextStyle(
                  color: AppColors.whiteColors,
                  fontSize: 17,
                  fontWeight: AppSize.apptextFontweight,
                ),
              ),
              Image.asset(AppImages.social, width: 200),
              // SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

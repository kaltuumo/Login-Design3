import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_design3/utilities/constant/colors.dart';
import 'package:login_design3/utilities/constant/sizes.dart';
import 'package:login_design3/utilities/constant/texts.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(gradient: AppColors.greenGradient),
            child: Padding(
              padding: const EdgeInsets.only(top: 70, left: 25),
              child: Text(
                "Hello\nForget Password",
                style: TextStyle(
                  color: AppColors.whiteColors,
                  fontSize: 25,
                  fontWeight: AppSize.apptextFontweight,
                ),
              ),
            ),
          ),
          Padding(
            padding: AppSize.containerPadding,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppSize.sideRadius),
                  topRight: Radius.circular(AppSize.sideRadius),
                ),
                color: AppColors.whiteColors,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(height: 10),

                    Text(
                      "Reset Your Password",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: AppSize.apptextFontweight,
                        color: Color(0xFF11998E),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        label: Text(
                          AppText.useName,
                          style: TextStyle(color: Color(0xFF11998E)),
                        ),
                        suffixIcon: Icon(
                          Icons.check,
                          color: AppColors.greyColor,
                        ),
                      ),
                    ),

                    const SizedBox(height: 40),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          gradient: AppColors.greenGradient,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            AppText.forgetText,
                            style: TextStyle(
                              color: AppColors.whiteColors,
                              fontSize: 18,
                              fontWeight: AppSize.apptextFontweight,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        Get.to(() => ForgetPassword());
                      },
                      child: Text(
                        "Back To Login",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: AppSize.apptextFontweight,
                          color: Color(0xFF11998E),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

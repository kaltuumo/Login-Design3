import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:login_design3/features/auth/screens/forgetPassword/forget_password.dart';
import 'package:login_design3/features/auth/screens/signUp/signup_page.dart';
import 'package:login_design3/utilities/constant/colors.dart';
import 'package:login_design3/utilities/constant/sizes.dart';
import 'package:login_design3/utilities/constant/texts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                "Hello\nLogin",
                style: TextStyle(color: AppColors.whiteColors, fontSize: 25),
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
                    SizedBox(height: 50),
                    TextField(
                      decoration: InputDecoration(
                        label: Text(
                          "User name",
                          style: TextStyle(color: Color(0xFF11998E)),
                        ),
                        suffixIcon: Icon(
                          Icons.check,
                          color: AppColors.greyColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        label: Text(
                          "Password",
                          style: TextStyle(color: Color(0xFF11998E)),
                        ),
                        suffixIcon: Icon(
                          Icons.visibility_off,
                          color: AppColors.greyColor,
                        ),
                      ),
                    ),

                    // const SizedBox(height: 20),
                    // Text(
                    //   "Email",
                    //   style: TextStyle(
                    //     color: Color(0xFF11998E),
                    //     fontSize: 20,
                    //     fontWeight: AppSize.apptextFontweight,
                    //   ),
                    // ),
                    // TextField(
                    //   decoration: InputDecoration(
                    //     label: Text(AppText.useName),
                    //     prefixIcon: Icon(
                    //       Icons.email_outlined,
                    //       color: AppColors.greyColor,
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(height: 30),
                    // Text(
                    //   "Password",
                    //   style: TextStyle(
                    //     color: Color(0xFF11998E),
                    //     fontSize: 20,
                    //     fontWeight: AppSize.apptextFontweight,
                    //   ),
                    // ),
                    // TextField(
                    //   decoration: InputDecoration(
                    //     hintText: AppText.passName,
                    //     prefixIcon: Icon(
                    //       Icons.password_outlined,
                    //       color: AppColors.greyColor,
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        Get.to(() => ForgetPassword());
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.blackColors,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),
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
                    Spacer(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Don,t Have An Account?",
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.greyColor,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(() => SignupPage());
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.greyColor,
                              ),
                            ),
                          ),
                        ],
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

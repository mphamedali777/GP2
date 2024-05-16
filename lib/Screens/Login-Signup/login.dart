import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/Screens/Login-Signup/forgot_pass.dart';
import 'package:medical/Screens/Login-Signup/login_signup.dart';
import 'package:medical/Screens/Login-Signup/register.dart';
import 'package:medical/Screens/Views/home_page.dart';
import 'package:medical/Screens/Widgets/auth_social_login.dart';
import 'package:medical/Screens/Widgets/auth_text_field.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/app_colors.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.06,
              child: Image.asset("assets/icons/back2.png")),
          onPressed: () {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: const LoginSignup()));
          },
        ),
        centerTitle: true,
        title: Text(
          "تسجيل الدخول",
          style: GoogleFonts.inter(
              color: Colors.black87,
              fontSize: 22.sp,
              fontWeight: FontWeight.w700,
              letterSpacing: 0),
        ),
        toolbarHeight: 110,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(children: [
          const SizedBox(
            height: 40,
          ),
          //Text field Login import from Auth_text_field widget
          const AuthTextField(
              text: "البريد الالكتروني", icon: "assets/icons/email.png"),
          const SizedBox(
            height: 5,
          ),
          //Text field Password
          const AuthTextField(
              text: "كلمة المرور", icon: "assets/icons/lock.png"),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.bottomToTop,
                        child: const ForgotPass()));
              },
              child: Text(
                "هل نسيت كلمة المرور؟",
                style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    color: AppColors.primary,
                    fontWeight: FontWeight.w500),
              ),
            )
          ]),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(
              onPressed: () {
                // Perform verification or other actions here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          child: const Homepage()));
                },
                child: Text(
                  "تسجيل الدخول",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ليس لدي حساب؟ ",
                style:
                    GoogleFonts.poppins(fontSize: 15.sp, color: Colors.black87),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child:  Register()));
                },
                child: Text(
                  "اشتراك",
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Divider()),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "or",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(child: Divider()),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const AuthSocialLogins(
              logo: "assets/images/google.png",
              text: "Google تسجيل الدخول بواسطة "),
          const SizedBox(
            height: 20,
          ),
          const AuthSocialLogins(
              logo: "assets/images/apple.png",
              text: "Apple تسجيل الدخول بواسطة"),
          const SizedBox(
            height: 20,
          ),
          const AuthSocialLogins(
              logo: "assets/images/facebook.png",
              text: "Facebook تسجيل الدخول بواسطة")
        ]),
      ),
    );
  }
}

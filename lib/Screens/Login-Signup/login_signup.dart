import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/Screens/Login-Signup/login.dart';
import 'package:medical/Screens/Login-Signup/register.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/app_colors.dart';

class LoginSignup extends StatelessWidget {
  const LoginSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const SizedBox(
          height: 200,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.height * 01,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/logo-green.png"),
                  filterQuality: FilterQuality.high)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "صحتك تهمنا",
              style: GoogleFonts.poppins(
                fontSize: 24.sp,
                color: const Color.fromARGB(211, 14, 13, 13),
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Expanded(
        //       child: Text(
        //         "Login to enjoy the features we've \nprovided, and stay healthy",
        //         textAlign: TextAlign.center,
        //         style: GoogleFonts.poppins(
        //             fontSize: 15.sp,
        //             color: const Color.fromARGB(211, 14, 13, 13),
        //             fontWeight: FontWeight.w400,
        //             letterSpacing: 1),
        //       ),
        //     ),
        //   ],
        // ),
        const SizedBox(
          height: 50,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.7,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: const Login()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Text(
              "تسجيل الدخول ",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 20.sp,
                color: const Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.7,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(30)),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child:  Register()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Text(
              "انشاء حساب",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 20.sp,
                color: AppColors.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/Screens/Widgets/profile_list.dart';
import 'package:medical/Screens/Widgets/profile_screen/custom_metric_widget.dart';
import 'package:medical/core/utils/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Center(
              child: Stack(
                children: [
                  const SizedBox(height: 50),
                  Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                        border: Border.all(width: 4, color: Colors.white),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1))
                        ],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: AssetImage("assets/icons/avatar.png"),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.white),
                          color: Colors.white,
                          image: const DecorationImage(
                              image: AssetImage("assets/icons/camra.png"))),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "محمد رمضان",
                  style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )
              ],
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomMetricWidget(
                    title: "سعرات حراريه",
                    imagePath: "assets/icons/callories.png",
                    value: "103lbs",
                  ),
                  CustomVerticalDivider(),
                  CustomMetricWidget(
                    title: "الوزن",
                    imagePath: "assets/icons/weight.png",
                    value: "756cal",
                  ),
                  CustomVerticalDivider(),
                  CustomMetricWidget(
                    title: "نبضات القلب",
                    imagePath: "assets/icons/heart.png",
                    value: "215bpm",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 550,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: const Column(children: [
                SizedBox(height: 50),
                ProfileList(
                  image: "assets/icons/heart2.png",
                  title: "محفوظاتي",
                  color: Colors.black87,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Divider(),
                ),
                ProfileList(
                  image: "assets/icons/appoint.png",
                  title: "المواعيد",
                  color: Colors.black87,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Divider(),
                ),
                ProfileList(
                  image: 'assets/icons/chat.png',
                  title: "FAQs",
                  color: Colors.black87,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Divider(),
                ),
                ProfileList(
                  image: "assets/icons/pay.png",
                  title: "طرق الدفع",
                  color: Colors.black87,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Divider(),
                ),
                ProfileList(
                  image: "assets/icons/logout.png",
                  title: "تسجيل الخروج",
                  color: Colors.red,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomVerticalDivider extends StatelessWidget {
  const CustomVerticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 1,
      color: Colors.white,
    );
  }
}

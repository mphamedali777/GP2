import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/Screens/Views/doctor_details_screen.dart';
import 'package:medical/Screens/Views/home_page.dart';
import 'package:medical/Screens/Widgets/doctor_list.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DoctorSearch extends StatelessWidget {
  const DoctorSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
                context,
                PageTransition(
                    type: PageTransitionType.fade, child: const Homepage()));
          },
          child: Container(
            height: 10,
            width: 10,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/icons/back1.png"),
            )),
          ),
        ),
        title: Text(
          "افضل الاطباء",
          style: GoogleFonts.poppins(color: Colors.black, fontSize: 18.sp),
        ),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 100,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 10,
              width: 10,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/icons/more.png"),
              )),
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: const DoctorDetails()));
            },
            child: const DoctorList(
              kind: "جراحه قلب",
                distance: "800m Away",
                image: "assets/icons/male-doctor.png",
                maintext: "د.احمد صبحي",
                numRating: "4.7",
                subtext: "Chardiologist"),
          ),
          const DoctorList(
              kind: "جراحه قلب",
              distance: "800m Away",
              image: "assets/icons/docto3.png",
              maintext: "د.محمود البطيخي",
              numRating: "4.7",
              subtext: "Chardiologist"),
          const DoctorList(
              kind: "جراحه قلب",
              distance: "800m Away",
              image: "assets/icons/doctor2.png",
              maintext: "د.رفاعي الدسوقي",
              numRating: "4.7",
              subtext: "Chardiologist"),
          const DoctorList(
              kind: "جراحه قلب",
              distance: "800m Away",
              image: "assets/icons/black-doctor.png",
              maintext: "د.المنوفي",
              numRating: "4.7",
              subtext: "Chardiologist"),
          const DoctorList(
              kind: "جراحه قلب",
              distance: "800m Away",
              image: "assets/icons/male-doctor.png",
              maintext: "د.ابو العنين",
              numRating: "4.7",
              subtext: "Chardiologist"),
        ],
      )),
    );
  }
}

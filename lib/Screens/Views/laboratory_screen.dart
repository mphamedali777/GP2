import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Widgets/doctor_list.dart';
import 'doctor_details_screen.dart';
import 'home_page.dart';

class Lab_Screen extends StatefulWidget {
  const Lab_Screen({super.key});

  @override
  State<Lab_Screen> createState() => _Lab_ScreenState();
}

class _Lab_ScreenState extends State<Lab_Screen> {
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
          "معامل التحاليل",
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
                    kind: "كله",
                    distance: "800m Away",
                    image: "assets/icons/male-doctor.png",
                    maintext: "احمد صبحي",
                    numRating: "4.7",
                    subtext: "Chardiologist"),
              ),
              const DoctorList(
                  kind: "جراحه",
                  distance: "800m Away",
                  image: "assets/icons/docto3.png",
                  maintext: "محمود البطيخي",
                  numRating: "4.7",
                  subtext: "Chardiologist"),
              const DoctorList(
                  kind: "مخ واعصاب",
                  distance: "800m Away",
                  image: "assets/icons/doctor2.png",
                  maintext: " الدسوقي",
                  numRating: "4.7",
                  subtext: "Chardiologist"),
              const DoctorList(
                  kind: "كماليات",
                  distance: "800m Away",
                  image: "assets/icons/black-doctor.png",
                  maintext: "د.المنوفي",
                  numRating: "4.7",
                  subtext: "Chardiologist"),
              const DoctorList(
                  kind: "عظام",
                  distance: "800m Away",
                  image: "assets/icons/male-doctor.png",
                  maintext: "ابو العنين",
                  numRating: "4.7",
                  subtext: "Chardiologist"),
            ],
          )),
    );;
  }
}

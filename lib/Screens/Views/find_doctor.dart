

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/Screens/Views/dashboard_screen.dart';
import 'package:medical/Screens/Views/doctor_details_screen.dart';
import 'package:medical/Screens/Views/speech_screen.dart';
import 'package:medical/Screens/Widgets/doctor_list.dart';
import 'package:medical/Screens/Widgets/list_icons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/app_colors.dart';

class FindDoctor extends StatelessWidget {
   FindDoctor({super.key , text});

 String? text ;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.06,
              child: Image.asset("assets/icons/back2.png")),
          onPressed: () {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Dashboard()) );
          },
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: Column(
          children: [
            Text(
              "ايجاد طبيب ",
              style: GoogleFonts.inter(
                color: const Color.fromARGB(255, 51, 47, 47),
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        toolbarHeight: 130,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: const BoxDecoration(),
                child: TextField(
                  controller: controller   ,
                  // onTap:(){ if(text != null ) {Text(
                  //   textAlign:TextAlign.start,
                  //     "${text}"
                  // );
                  // }
                  //   },

                  textAlign: TextAlign.end,
                  textInputAction: TextInputAction.none,
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    focusColor: Colors.black26,
                    fillColor: const Color.fromARGB(255, 247, 247, 247),
                    filled: true,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                        width: MediaQuery.of(context).size.width * 0.01,
                        child: Image.asset(
                          "assets/icons/search.png",
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    ),
                    prefixIconColor: AppColors.primary,
                    label: const Text("البحث عن طبيب ,علاج,مساعدة طبيه..."),
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    "افضل الاطباء",
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 46, 46, 46),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
             Row(
              children: [
                SizedBox(width: 10),
                ListIcons(icon: "assets/icons/Doctor.png", text: "عام"),
                ListIcons(icon: "assets/icons/Lungs.png", text: "الصدر"),
                ListIcons(icon: "assets/icons/Dentist.png", text: "اسنان"),
                ListIcons(icon: "assets/icons/psychology.png", text: "نفسية")
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                ListIcons(icon: "assets/icons/covid.png", text: "مناعه"),
                ListIcons(
                    icon: "assets/icons/injection.png", text: "Lungs Prob"),
                ListIcons(
                    icon: "assets/icons/cardiologist.png", text: "General"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    "الطبيب الحالي",
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 46, 46, 46),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
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
                  distance: "800m away",
                  image: "assets/icons/male-doctor.png",
                  maintext: "Dr. Marcus Horizon",
                  numRating: "4.7",
                  subtext: "Chardiologist"),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    "احدث الاطباء",
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 46, 46, 46),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1400,
                  width: MediaQuery.of(context).size.width * 0.2900,
                  child: Column(children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.100,
                      width: MediaQuery.of(context).size.width * 0.1900,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/icons/male-doctor.png"),
                              filterQuality: FilterQuality.high)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Dr. Marcus")],
                    )
                  ]),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1400,
                  width: MediaQuery.of(context).size.width * 0.2900,
                  child: Column(children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.100,
                      width: MediaQuery.of(context).size.width * 0.1900,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/icons/female-doctor.png"),
                              filterQuality: FilterQuality.high,
                              fit: BoxFit.contain)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Dr. Maria")],
                    )
                  ]),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1400,
                  width: MediaQuery.of(context).size.width * 0.2900,
                  child: Column(children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.100,
                      width: MediaQuery.of(context).size.width * 0.1900,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/icons/black-doctor.png",
                              ),
                              fit: BoxFit.contain,
                              filterQuality: FilterQuality.high)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Dr. Luke")],
                    )
                  ]),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

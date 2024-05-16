import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/Screens/Views/appointment.dart';
import 'package:medical/Screens/Views/chat_screen.dart';
import 'package:medical/Screens/Widgets/date_select.dart';
import 'package:medical/Screens/Widgets/doctor_list.dart';
import 'package:medical/Screens/Widgets/time_select.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({super.key});

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  bool showExtendedText = false;

  void toggleTextVisibility() {
    setState(() {
      showExtendedText = !showExtendedText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
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
            "Top Doctors",
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
        // ... Your existing code ...

        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                const DoctorList(
                  kind: "انف واذن وحنجره",
                  distance: "800m away",
                  image: "assets/icons/male-doctor.png",
                  maintext: "Dr. Marcus Horizon",
                  numRating: "4.7",
                  subtext: "Cardiologist",
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: toggleTextVisibility,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "حول",
                          style: GoogleFonts.poppins(
                              fontSize: 15.sp, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          showExtendedText
                              ? "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod elipss this is just a dummy text with some free lines do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam consectetur adipiscing elit. Sed euismod ..."
                              : "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod elipss this is just a dummy text with some free ... ",

                          style: GoogleFonts.poppins(
                            color: const Color.fromARGB(255, 37, 37, 37),
                            fontSize: 14.sp,

                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          showExtendedText ? "قراءة اقل" : "قراءة المزيد",
                          style: TextStyle(
                            color: showExtendedText
                                ? const Color.fromARGB(255, 1, 128, 111)
                                : const Color.fromARGB(255, 1, 128,
                                    111), // Change color based on visibility
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.12,
                    width: MediaQuery.of(context).size.width * 3,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: const [
                        DateSelect( maintext: "Sat"),
                        DateSelect( maintext: "Sun"),
                        DateSelect( maintext: "Mon"),
                        DateSelect( maintext: "Tue"),
                        DateSelect( maintext: "Wed"),
                        DateSelect( maintext: "Thu"),
                        DateSelect( maintext: "Fri"),
                                              ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(
                    color: Colors.black12,
                    thickness: 1,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //Time select container importing widget from widgets/times_select

              ],
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child:ChatScreen()));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.1300,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 247, 247, 247),
                              borderRadius: BorderRadius.circular(18),
                              image: const DecorationImage(
                                  image: AssetImage(
                                    "assets/icons/chat.png",
                                  ),
                                  filterQuality: FilterQuality.high)),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  child: const Appointment()));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.6300,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 2, 179, 149),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "حجز كشف ",
                                  style: GoogleFonts.poppins(
                                      fontSize: 20.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                )
                              ]),
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ));
  }
}

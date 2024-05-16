import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/Screens/Views/articlePage.dart';
import 'package:medical/Screens/Views/doctor_search.dart';
import 'package:medical/Screens/Views/find_doctor.dart';
import 'package:medical/Screens/Views/nares_screen.dart';
import 'package:medical/Screens/Views/pharmacy_screen.dart';
import 'package:medical/Screens/Views/speech_screen.dart';
import 'package:medical/Screens/Widgets/article.dart';
import 'package:medical/Screens/Widgets/banner_widget.dart';
import 'package:medical/Screens/Widgets/dashboard/dash_board_dialog_body.dart';
import 'package:medical/Screens/Widgets/list_doctor1.dart';
import 'package:medical/Screens/Widgets/list_icons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../core/utils/app_colors.dart';
import 'laboratory_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   showDialog(
    //     context: context,
    //     builder: (context) {
    //       return AlertDialog(
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(20),
    //         ),
    //         title: const Text(
    //           "اختر الخدمة التي تريد استخدامها",
    //           style: TextStyle(
    //             fontSize: 20,
    //             fontWeight: FontWeight.bold,
    //           ),
    //         ),
    //         content: const DashBoardDialogBody(),
    //       );
    //     },
    //   );
    //
    // });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        actions: [
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                textAlign: TextAlign.end,
                "العثور علي الحل \nالصحي لك ",
                style: GoogleFonts.inter(
                  color: const Color.fromARGB(255, 51, 47, 47),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0,
                ),
              ),
            ),
          ),
        ],
        title: Container(
          margin: const EdgeInsets.only(left: 20, top: 20),
          alignment: Alignment.bottomCenter,
          height: MediaQuery.of(context).size.height * 0.06,
          width: MediaQuery.of(context).size.width * 0.06,
          child: Image.asset(
            "assets/icons/bell.png",
            filterQuality: FilterQuality.high,
          ),
        ),
        toolbarHeight: 110,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Center(
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    child: IconButton(
                        tooltip: "Listen",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SpeechScreen(),
                              ));
                        },
                        icon: Image.asset(
                          "assets/icons/mic2.jpg",
                        )),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: const BoxDecoration(),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: FindDoctor(),
                              ));
                        },
                        child: TextField(
                          onTap: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.rightToLeft,
                                    child: FindDoctor()));
                          },
                          decoration: InputDecoration(
                            focusColor: Colors.black26,
                            fillColor: const Color.fromARGB(255, 247, 247, 247),
                            filled: true,
                            suffixIcon: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: SizedBox(
                                height: 10,
                                width: 10,
                                child: Image.asset(
                                  "assets/icons/search.png",
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                            prefixIconColor: AppColors.primary,
                            label:
                                const Text("البحث عن الطبيب ,علاج,مساعده طبيه"),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            //Body Start fro here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DoctorSearch()));
                    },
                    child: ListIcons(
                        icon: "assets/icons/Doctor.png", text: "طبيب")),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Pharmacy_Screen()));
                  },
                  child: ListIcons(
                      icon: "assets/icons/Pharmacy.png", text: "صيدلية"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NaresScreen()));
                  },
                  child: ListIcons(
                      icon: "assets/icons/Hospital.png", text: "تمريض"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Lab_Screen()));
                  },
                  child: ListIcons(
                      icon: "assets/icons/Ambulance.png", text: "تحليل"),
                ),
              ],
            ),

            //List icons (Can Edit in Widgets )
            const SizedBox(height: 10),
            const BannerWidget(),
            // Banner Design
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: const DoctorSearch(),
                          ));
                    },
                    child: Text(
                      "المزيد",
                      style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                  Text(
                    "افضل الاطباء",
                    style: GoogleFonts.inter(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 46, 46, 46),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                height: 180,
                width: 400,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ListDoctor1(
                        distance: "130m Away",
                        image: "assets/icons/male-doctor.png",
                        maintext: "Dr. Marcus Horizon",
                        numRating: "4.7",
                        subtext: "Chardiologist"),
                    ListDoctor1(
                        distance: "130m Away",
                        image: "assets/icons/docto3.png",
                        maintext: "Dr. Maria Elena",
                        numRating: "4.6",
                        subtext: "Psychologist"),
                    ListDoctor1(
                        distance: "2km away",
                        image: "assets/icons/doctor2.png",
                        maintext: "Dr. Stevi Jessi",
                        numRating: "4.8",
                        subtext: "Orthopedist"),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Health article",
                    style: GoogleFonts.inter(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 46, 46, 46),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            child: const ArticlePage(),
                          ));
                    },
                    child: Text(
                      "See all",
                      style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            //Article banner here import from widget>article
            const Article(
              image: "assets/images/article1.png",
              dateText: "Jun 10, 2021 ",
              duration: "5min read",
              mainText:
                  "The 25 Healthiest Fruits You Can Eat,\nAccording to a Nutritionist",
            ),
          ],
        ),
      ),
    );
  }
}

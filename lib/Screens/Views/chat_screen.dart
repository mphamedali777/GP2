import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/Screens/Views/home_page.dart';
import 'package:medical/Screens/Widgets/chat_doctor.dart';
import 'package:medical/Screens/Widgets/chat_info.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/utils/app_colors.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // Leading icon for navigation
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
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
        // Title of the chat screen
        title: Text(
          "د.محمد الدولي",
          style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 17.sp),
        ),
        centerTitle: false,
        elevation: 0,
        toolbarHeight: 100,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                // Video call icon
                Container(
                  height: 18,
                  width: 18,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/icons/video_call.png"),
                  )),
                ),
                const SizedBox(
                  width: 15,
                ),
                // Call icon
                Container(
                  height: 18,
                  width: 18,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/icons/call.png"),
                  )),
                ),
                const SizedBox(
                  width: 15,
                ),
                // More options icon
                Container(
                  height: 18,
                  width: 18,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/icons/more.png"),
                  )),
                ),
              ],
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Widget to display chat information
                const ChatInfo(),
                const SizedBox(
                  height: 30,
                ),
                // Widget to display doctor's information
                const ChatDoctor(),
                const SizedBox(
                  height: 15,
                ),
                // Container for user's introductory message
                Container(
                  height: MediaQuery.of(context).size.height * 0.03,
                  width: MediaQuery.of(context).size.width * 0.4500,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 236, 232, 232),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "مرحبا كيف اساعدك؟",
                          style: TextStyle(fontSize: 15.sp),
                        )
                      ]),
                ),
                const SizedBox(
                  height: 15,
                ),
                // Container for user's message
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 0, 131, 113),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(0),
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                // User's message content
                                child: Text(
                                  "مرحبا يا دكتور اني اعاني من الم شديد في الدماغ",
                                  style: TextStyle(
                                      fontSize: 14.sp, color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.02,
                              width: MediaQuery.of(context).size.width * 0.05,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/icons/ticks.png"),
                                      filterQuality: FilterQuality.high)),
                            )
                          ]),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                // Widget to display doctor's information
                const ChatDoctor(),
                const SizedBox(
                  height: 15,
                ),
                // Container for user's introductory message
                Container(
                  height: MediaQuery.of(context).size.height * 0.03,
                  width: MediaQuery.of(context).size.width * 0.4500,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 236, 232, 232),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "معلش",
                          style: TextStyle(fontSize: 14.sp),
                        )
                      ]),
                ),
                const SizedBox(
                  height: 15,
                ),
                // Container for user's message
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 0, 131, 113),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(0),
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                // User's message content
                                child: Text(
                                  "شكرا",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13.sp),
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.02,
                              width: MediaQuery.of(context).size.width * 0.05,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/icons/ticks.png"),
                                      filterQuality: FilterQuality.high)),
                            )
                          ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.82,
                    child: TextField(
                      textAlign: TextAlign.end,
                      textInputAction: TextInputAction.none,
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        focusColor: Colors.black26,
                        fillColor: const Color.fromARGB(255, 247, 247, 247),
                        filled: true,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: SizedBox(
                            height: 10,
                            width: 10,
                            child: Image.asset("assets/icons/pin.png"),
                          ),
                        ),
                        prefixIconColor: AppColors.primary,
                        label: const Text("اكتب رسالة ..."),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}

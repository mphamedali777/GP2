import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/Screens/Views/chat_screen.dart';
import 'package:medical/Screens/Widgets/message_all_widget.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MessageTabAll extends StatefulWidget {
  const MessageTabAll({Key? key}) : super(key: key);

  @override
  State<MessageTabAll> createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<MessageTabAll>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Shedule",
          style: GoogleFonts.poppins(color: Colors.black, fontSize: 18.sp),
        ),
        centerTitle: false,
        elevation: 0,
        toolbarHeight: 100,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 20,
              width: 20,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/icons/bell.png"),
              )),
            ),
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.bottomToTop,
                    child: const ChatScreen()));
          },
          child: const MessageAllWidget(
            image: "assets/icons/male-doctor.png",
            mainText: "Dr. Marcus Horizon",
            subtext: "I don,t have any fever, but headchace...",
            time: "10.24",
            messageCount: "2",
          ),
        ),
        const MessageAllWidget(
          image: "assets/icons/docto3.png",
          mainText: "Dr. Alysa Hana",
          subtext: "Hello, How can i help you?",
          time: "10.24",
          messageCount: "1",
        ),
        const MessageAllWidget(
          image: "assets/icons/doctor2.png",
          mainText: "Dr. Maria Elena",
          subtext: "Do you have fever?",
          time: "10.24",
          messageCount: "3",
        ),
      ]),
    );
  }
}

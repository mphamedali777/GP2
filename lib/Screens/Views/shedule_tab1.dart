import 'package:flutter/material.dart';
import 'package:medical/Screens/Widgets/shedule_card.dart';

class ScheduleTab1 extends StatelessWidget {
  const ScheduleTab1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        SizedBox(height: 30),
        ScheduleCard(
          confirmation: "Confirmed",
          mainText: "Dr. Marcus Horizon",
          subText: "Chardiologist",
          date: "26/06/2022",
          time: "10:30 AM",
          image: "assets/icons/male-doctor.png",
        ),
        SizedBox(
          height: 20,
        ),
        ScheduleCard(
          confirmation: "Confirmed",
          mainText: "Dr. Marcus Horizon",
          subText: "Chardiologist",
          date: "26/06/2022",
          time: "2:00 PM",
          image: "assets/icons/female-doctor2.png",
        )
      ]),
    );
  }
}

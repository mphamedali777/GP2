import 'package:flutter/material.dart';
import 'package:medical/Screens/Login-Signup/login_signup.dart';
import 'package:medical/Screens/Views/speech_screen.dart';
import 'package:medical/Screens/Widgets/time_select.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'Screens/Login-Signup/register.dart';
import 'Screens/Views/doctor_details_screen.dart';
import 'Screens/Views/doctor_search.dart';
import 'Screens/Views/home_page.dart';
import 'Screens/Views/nares_screen.dart';
import '';


void main() {
  runApp(const Medics());
}

class Medics extends StatelessWidget {
  const Medics({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Register(),
      );
    });
  }
}

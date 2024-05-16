import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomMetricWidget extends StatelessWidget {
  const CustomMetricWidget({
    super.key,
    required this.title,
    required this.imagePath,
    required this.value,
  });

  final String title;
  final String imagePath;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.0400,
          width: MediaQuery.of(context).size.width * 0.1500,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imagePath),
                filterQuality: FilterQuality.high),
          ),
        ),
        Text(
          title,
          style: GoogleFonts.poppins(
              fontSize: 13.sp,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 245, 243, 243)),
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: GoogleFonts.poppins(
              fontSize: 15.sp,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 255, 255, 255)),
        )
      ],
    );
  }
}

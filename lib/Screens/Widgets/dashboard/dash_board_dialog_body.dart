import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:medical/core/utils/app_colors.dart';

class DashBoardDialogBody extends StatefulWidget {
  const DashBoardDialogBody({super.key});

  @override
  State<DashBoardDialogBody> createState() => _DashBoardDialogBodyState();
}

class _DashBoardDialogBodyState extends State<DashBoardDialogBody> {
  @override
  void initState(){
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
    //
    // });
    audio_();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomServiceButton(
            text: "طبيب",
            onPressed: () {
              // todo: navigate here
            },
          ),
          CustomServiceButton(
            text: "صيدلية",
            onPressed: () {
              // todo: navigate here
            },
          ),
          CustomServiceButton(
            text: "تمريض",
            onPressed: () {
              // todo: navigate here
            },
          ),
          CustomServiceButton(
            text: "تحليل",
            onPressed: () {
              // todo: navigate here
            },
          ),
        ],
      ),
    );
  }
}

class CustomServiceButton extends StatelessWidget {
  const CustomServiceButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: AppColors.primary, width: 2),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

Future<void> audio_() async{
  final player = AudioPlayer();
  // todo: change the asset path
  // step 1: add the new audio to the "audio" folder
  // step 2: change the asset path in the below line
  await player.setAsset("audio/besm_allah.mp3");
  player.play();
}
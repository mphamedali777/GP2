import 'package:flutter/material.dart';
import 'package:medical/Screens/Views/find_doctor.dart';
import 'package:speech_to_text/speech_to_text.dart';

class SpeechScreen extends StatefulWidget {
  const SpeechScreen({super.key});

  @override
  State<SpeechScreen> createState() => _SpeechScreenState();
}

class _SpeechScreenState extends State<SpeechScreen> {

 SpeechToText speechToText = SpeechToText();
  bool isListening = false;
  String text1 = "" ;
 TextEditingController control = TextEditingController();

 edit(text1){
   control.text = text1 ;
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          "Speak",
          style: (
          TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          )
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width *1,
                height: MediaQuery.of(context).size.height *.6 ,
                child:
                  TextFormField(
                    textAlign: TextAlign.right,
              decoration: InputDecoration(
                labelText: "Hold the mic to speak",
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
              ),
                    controller: control,
                    onChanged: edit(text1),

                     // autovalidateMode: edit(text1),
                  ),
              ),
            ),
        
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> FindDoctor(text: text1) ),
              );
            },
                child: ImageIcon( color: Colors.green,AssetImage("assets/icons/back.png"),
                ),
            ),
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:
      GestureDetector(
        onTapDown:(details)async{
            if(!isListening){
              var enable = await speechToText.initialize();
              if(enable){
                setState(() {
                  isListening = true ;
                  speechToText.listen(onResult:(result) {
                    setState(() {
                      text1 = result.recognizedWords;
                    });
                  }
                  );
                });
              }
            }
            },
        onTapUp: (details){
        setState(() {
          isListening = false ;
        });
          speechToText.stop();
        },
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white,
          child: Image.asset("assets/icons/mic_off.png",fit: BoxFit.fill,width: 50,height: 50,),
        ),
      ),
    );
  }
}

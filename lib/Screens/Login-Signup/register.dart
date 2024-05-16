import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medical/Screens/Login-Signup/login.dart';
import 'package:medical/Screens/Widgets/auth_text_field.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:http/http.dart' as http ;
import '../../core/utils/app_colors.dart';
import '../Views/home_page.dart';

class Register extends StatefulWidget {
   Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();

   bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.06,
              child: Image.asset("assets/icons/back2.png")),
          onPressed: () {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.leftToRight,
                    child: const Login()));
          },
        ),
        title: Text(
          "انشاء حساب",
          style: GoogleFonts.inter(
              color: Colors.black87,
              fontSize: 22.sp,
              fontWeight: FontWeight.w700,
              letterSpacing: 0),
        ),
        toolbarHeight: 110,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Form(
        key: formkey ,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(children: [
              const SizedBox(
                height: 40,
              ),
              Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: TextFormField(
                    validator: (data){
                      if(data!.isEmpty){
                        return "field is required";
                      }
                    },
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
                          child: Image.asset("assets/icons/person.png"),
                        ),
                        prefixIconColor: AppColors.primary,
                        label: Text(
                          "الاسم",
                          style: GoogleFonts.poppins(fontSize: 15.sp),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const AuthTextField(
                  text: "البريد الالكتروني", icon: "assets/icons/email.png"),
              const SizedBox(
                height: 5,
              ),
              const AuthTextField(
                  text: "كلمة المرور", icon: "assets/icons/lock.png"),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (bool? value) {},
                  ),
                  Text(
                    "انا اوافق علي هذه الشروط",
                    style: GoogleFonts.poppins(
                      fontSize: 14.sp,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                  onPressed: () async{
                    if( formkey.currentState!.validate()){
                      isLoading = true ;
                      setState(() {
                      });
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content:
                        Text("missing value"),
                        backgroundColor: Colors.red,
                      ),
                      );
                      isLoading = false ;
                      setState(() {

                      });


                     print(await http.post(Uri.parse("{{url}}/auth/user/register"), body:
                      {
                      "first_name":"ibrahim",
                      "email":"ibrahim10@gmail.com",
                      "password":"123456789",
                      })
                      );
                      Navigator.push(context, MaterialPageRoute(builder:(context) =>Homepage(), ));
                    }
                    // Perform verification or other actions here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    "انشاء حساب",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 18.sp,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "انا بالفعل لدي حساب؟ ",
                    style:
                        GoogleFonts.poppins(fontSize: 14.sp, color: Colors.black87),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.bottomToTop,
                              child: const Login()));
                    },
                    child: Text(
                      "تسجيل الدخول",
                      style: GoogleFonts.poppins(
                        fontSize: 14.sp,
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

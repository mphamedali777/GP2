import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

class AuthTextField extends StatelessWidget {
  final String text;
  final String icon;

  const AuthTextField({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
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
                child: Image.asset(icon),
              ),
              prefixIconColor: AppColors.primary,
              label: Text(text),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30),
              )),
        ),
      ),
    );
  }
}

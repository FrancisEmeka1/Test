import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomPassword extends StatefulWidget {
  const CustomPassword({super.key});

  @override
  State<CustomPassword> createState() => _CustomPasswordState();
}

class _CustomPasswordState extends State<CustomPassword> {
  bool _obscureText = true; // Whether the password is obscured or visible
  TextEditingController _passwordController = TextEditingController();
  @override

  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      width: 343.w,
      child:   TextField(
      controller: _passwordController,
      obscureText: _obscureText, // This toggles the password visibility
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30)
          ),
        labelText: 'Password',
        suffixIcon: IconButton(
        icon: Icon(
        _obscureText ? Icons.visibility : Icons.visibility_off,
    ),
    onPressed: () {
    setState(() {
    _obscureText = !_obscureText;
    });
    },
    ),
     ),

     ),
    );
  }
}

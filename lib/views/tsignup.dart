import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod/riverpod.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Tsignup extends ConsumerStatefulWidget {
  const Tsignup({Key? key}) : super(key: key);

  @override
  ConsumerState<Tsignup> createState() => _TsignupState();
}

class _TsignupState extends ConsumerState<Tsignup> {
  String? email;
  String? password;

  Future Signupuser() async {
    try {
      final Auth = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email.toString(), password: password.toString());
    } catch (e) {
      print(e);
    }
  }

  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 8.h,
                    width: MediaQuery.of(context).size.width - 20.w,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.black, width: 0.5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter Emails",
                          hintStyle: GoogleFonts.nunitoSans(),
                          suffixIcon: Icon(
                            Icons.email,
                            color: Colors.black,
                          ),
                        ),
                        onSaved: (value) {
                          setState(() {
                            email = value;
                            print(email);
                          });
                        },
                        style: GoogleFonts.nunitoSans(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Container(
                    height: 8.h,
                    width: MediaQuery.of(context).size.width - 20.w,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.black, width: 0.5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter password",
                          hintStyle: GoogleFonts.nunitoSans(),
                          suffixIcon: Icon(
                            Icons.email,
                            color: Colors.black,
                          ),
                        ),
                        onSaved: (value) {
                          setState(() {
                            password = value;
                            print(password);
                          });
                        },
                        style: GoogleFonts.nunitoSans(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        loading = true;
                      });

                      Future.delayed(Duration(seconds: 2), () {});
                    },
                    child: loading
                        ? CircularProgressIndicator()
                        : Container(
                            height: 8.h,
                            width: MediaQuery.of(context).size.width - 20.w,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(4),
                              border:
                                  Border.all(color: Colors.black, width: 0.5),
                            ),
                            child: Center(child: Text("Create Account")),
                          ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }));
  }
}

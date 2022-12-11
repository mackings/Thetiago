import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod/riverpod.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:thetiago/views/tsignup.dart';

class Nsignup extends ConsumerStatefulWidget {
  const Nsignup({Key? key}) : super(key: key);

  @override
  ConsumerState<Nsignup> createState() => _NsignupState();
}

class _NsignupState extends ConsumerState<Nsignup> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return MaterialApp(
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 6, 0, 10),
          body: SingleChildScrollView(
            child: Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Icon(
                      Icons.currency_bitcoin_sharp,
                      size: 190,
                      color: Colors.purple,
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    Text(
                      "Create a free account",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Tsignup()));
                      },
                      child: Container(
                        height: 8.h,
                        width: MediaQuery.of(context).size.width - 23.w,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            border: Border.all(color: Colors.white, width: 0.5),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "Create  an account",
                            style: GoogleFonts.nunitoSans(
                                color: Colors.white,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => Nlogin()));
                      },
                      child: Container(
                        height: 8.h,
                        width: MediaQuery.of(context).size.width - 23.w,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(color: Colors.white, width: 0.5),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "Login",
                            style: GoogleFonts.nunitoSans(
                                color: Colors.white,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Our partners",
                      style: GoogleFonts.nunitoSans(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }));
  }
}

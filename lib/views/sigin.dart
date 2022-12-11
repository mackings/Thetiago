import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod/riverpod.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Nlogin extends ConsumerStatefulWidget {
  const Nlogin({Key? key}) : super(key: key);

  @override
  ConsumerState<Nlogin> createState() => _NloginState();
}

class _NloginState extends ConsumerState<Nlogin> {
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
                  children: [
                    SizedBox(
                      height: 3.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Icon(
                      Icons.currency_bitcoin_sharp,
                      size: 190,
                      color: Colors.purple,
                    ),
                    SizedBox(height: 4.h,),
                    Container(
                      height: 8.h,
                      width: MediaQuery.of(context).size.width - 18.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white, width: 0.5),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
                              hintStyle: GoogleFonts.nunitoSans()),
                        ),
                      )),
                    ),
                    SizedBox(height: 3.h,),


                      Container(
                      height: 8.h,
                      width: MediaQuery.of(context).size.width - 18.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white, width: 0.5),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              hintStyle: GoogleFonts.nunitoSans()),
                        ),
                      )),
                    ),

                    SizedBox(height: 8.h,),

 


                     GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Nlogin()));
                      },
                      child: Container(
                        height: 8.h,
                        width: MediaQuery.of(context).size.width - 20.w,
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

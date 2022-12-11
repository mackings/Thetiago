import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod/riverpod.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Thome extends ConsumerStatefulWidget {
  const Thome({super.key});

  @override
  ConsumerState<Thome> createState() => _ThomeState();
}

class _ThomeState extends ConsumerState<Thome> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(children: [
                SizedBox(height: 5.h,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.person),
                      ),
          
                      Icon(Icons.notifications)
                    ],
                  ),
                  
                ),
                SizedBox(height: 2.h,),
          
                Container(
                  height: 20.h,
                  width: MediaQuery.of(context).size.width -8.w,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
          
                SizedBox(height: 2.h,),
          
                 Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text("Quick Actions",style: GoogleFonts.nunitoSans(),)
                    ],
                  ),
                ),
                SizedBox(height: 2.h,),
          
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0,10.0,20.0,20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: Container(
                          height: 18.h,
                          width: 28.w,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)
                          
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text("Xchange"),
                                  subtitle: Text("Trade with thiago today"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
                                  child: Row(
                                    children: [
                                      Icon(Icons.card_giftcard),
                                      
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ),
                      ),
          
                        GestureDetector(
                        onTap: () {
                          
                        },
                        child: Container(
                          height: 18.h,
                          width: 28.w,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)
                          
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text("Xchange"),
                                  subtitle: Text("Trade with thiago today"),
                                )
                              ],
                            ),
                          )
                        ),
                      ),
                        GestureDetector(
                        onTap: () {
                          
                        },
                        child: Container(
                          height: 18.h,
                          width: 28.w,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)
                          
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text("Xchange"),
                                  subtitle: Text("Trade with thiago today"),
                                )
                              ],
                            ),
                          )
                        ),
                      ),
                      
                    ],
                  ),
                ),
          
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text("Quick Services",style: GoogleFonts.nunitoSans(),)
                    ],
                  ),
                ),
                SizedBox(height: 2.h,),
          
                CarouselSlider(items: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Container(
                                     height: 10.h,
                                     width: MediaQuery.of(context).size.width -8.w,
                                     decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                                     ),
                                   ),
                   ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                    height: 10.h,
                    width: MediaQuery.of(context).size.width -8.w,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                                 ),
                 ),

                ], 
                options: CarouselOptions(
                  height: 170
                ))
          
          
          
          
              ]),
          
            
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
            BottomNavigationBarItem(icon: GestureDetector(
              onTap: () {
                
              },
              child: Icon(Icons.home,)),
            label: "Thiago"),

             BottomNavigationBarItem(icon: GestureDetector(
               onTap: () {
                
              },
              child: Icon(Icons.wallet,)),
            label: "Sell"),
            
             BottomNavigationBarItem(icon: GestureDetector(
               onTap: () {
                
              },
              child: Icon(Icons.home,)),
            label: "Trade"),

             BottomNavigationBarItem(icon: GestureDetector(
               onTap: () {
                
              },
              child: Icon(Icons.person,)),
            label: "Profile"),

          


          ]),
        ),
      );
    });
  }
}

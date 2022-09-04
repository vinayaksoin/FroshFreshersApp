

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditation/boxes/csb.dart';
import 'package:meditation/boxes/ntsb.dart';
import 'package:meditation/boxes/tsb.dart';
import 'package:meditation/culturalsoc_page.dart';
import 'package:meditation/detail_page.dart';
import 'package:meditation/nontechsoc_page.dart';
import 'package:meditation/technicalsoc_page.dart';

import 'package:meditation/widgets/category_boxes.dart';
import 'package:meditation/icons.dart';
import 'package:meditation/widgets/discover_card.dart';
import 'package:meditation/widgets/discover_small_card.dart';
import 'package:meditation/widgets/svg_asset.dart';


class SocietiesPage extends StatefulWidget {
  const SocietiesPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SocietiesPage> createState() => _SocietiesPageState();
}

class _SocietiesPageState extends State<SocietiesPage> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Color(0xff121421),
        appBar: AppBar(
          title: Image.asset('assets/images/tietlogo3.png'),
          backgroundColor: Color(0xff1C2031),
          shadowColor: Colors.black,
        ) ,
        body:  Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bgclubs.jpeg'),
                  fit: BoxFit.fill),
            ),
        child: SafeArea(
          child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 45.w,
                    right: 1.w,
                    top: 36.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Clubs & Societies",
                          textAlign:TextAlign.center,
                    // textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          fontSize: 33.w,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                      ),
                      // InkWell(
                      //   borderRadius: BorderRadius.circular(360),
                      //   onTap: onSearchIconTapped,
                      //   child: Container(
                      //     height: 35.w,
                      //     width: 35.w,
                      //     child: Center(
                      //       child: SvgAsset(
                      //         assetName: AssetName.search,
                      //         height: 24.w,
                      //         width: 24.w,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Padding(
                    padding:  EdgeInsets.symmetric(vertical: 28.w),
                    child: Column(
                      //shrinkWrap: true,
                      // physics: NeverScrollableScrollPhysics(),
                        children: [
                          TSB(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>TechnicalsocPage()));

                            },

                            title: "Technical Societies",

                            gradientStartColor: Color(0xff13DEA0),
                            gradientEndColor: Color(0xff06B782),


                            // icon: SvgAsset(
                            //   assetName: AssetName.tape,
                            //   height: 24.w,
                            //   width: 24.w,
                            // ),

                          ),
                          SizedBox(
                            height: 16.h,
                          ),

                          NTSB(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>NontechsocPage()));
                            },
                            title: "Non-Tech Societies",

                            gradientStartColor: Color(0xff13DEA0),
                            gradientEndColor: Color(0xff06B782),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),



                          CSB(

                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>CulturalSocPage()));
                            },
                            title: "Cultural \nSocieties",
                            gradientStartColor: Color(0xff13DEA0),
                            gradientEndColor: Color(0xff06B782),
                            icon:    SvgAsset(
                              assetName: AssetName.tape,
                              height: 24.w,
                              width: 24.w,
                            ),
                          ),
                        ]
                    )
                )
                ]
          ),
        )
    )
    );







  }
  void onSeeAllTapped() {
  }

  void onSleepMeditationTapped() {
    Get.to(()=> DetailPage(), transition: Transition.rightToLeft);
  }

  void onDepressionHealingTapped() {
  }

  void onSearchIconTapped() {
  }
}

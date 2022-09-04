import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:meditation/boxes/cb.dart';
import 'package:meditation/boxes/fb.dart';
import 'package:meditation/boxes/mb.dart';
import 'package:meditation/detail_page.dart';
import 'package:meditation/screens/Core.dart';
import 'package:meditation/screens/Faculty.dart';
import 'package:meditation/screens/Mentor.dart';
import 'package:meditation/icons.dart';
import 'package:meditation/widgets/discover_small_card.dart';
import 'package:meditation/widgets/svg_asset.dart';


class GalleryPage extends StatefulWidget {
  const GalleryPage({
    Key? key,
  }) : super(key: key);

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff121421),
        appBar: AppBar(
          title: Image.asset('assets/images/tietlogo3.png'),
          backgroundColor: Color(0xff1C2031),
          shadowColor: Colors.black,
        ) ,
        body: SafeArea(
          child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 130.w,
                    right: 50.w,
                    top: 36.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Gallery",
                          //textAlign:TextAlign.center,
                          style: TextStyle(

                              color: Colors.white,
                              fontSize: 34.w,
                              fontWeight: FontWeight.bold)),
                      // InkWell(

                    ],
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Padding(
                    padding:  EdgeInsets.symmetric(vertical: 28.w),
                    child: Column(

                        children: [
                          FB(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Faculty()));
                            },
                            title: "Faculty",

                              gradientStartColor: Color(0xffFF4B5C),
                            gradientEndColor: Color(0xffF6815B),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          CB(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Core()));

                            },
                            title: "Core",
                             gradientStartColor: Color(0xff056674),
                            gradientEndColor: Color(0xff66BFBF),
                            icon:    SvgAsset(
                              assetName: AssetName.tape,
                              height: 24.w,
                              width: 24.w,
                            ),
                          ),

                          SizedBox(
                            height: 16.h,
                          ),

                         MB(

                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Mentor()));
                            },
                            title: "Mentors",
                             gradientStartColor: Color(0xffFF4B5C),
                            gradientEndColor: Color(0xffF6815B),
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

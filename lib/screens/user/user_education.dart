import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:literacy/screens/user/education_photos.dart';
import 'package:literacy/screens/user/education_videos.dart';
import 'package:literacy/screens/user/videos.dart';

class UserEducation extends StatefulWidget {
  static const routeName = '/userEducation';
  const UserEducation({super.key});

  @override
  State<UserEducation> createState() => _UserEducationState();
}

class _UserEducationState extends State<UserEducation> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => Scaffold(
          appBar: AppBar(
              title: Text("الوسائل التعليمية"),
              centerTitle: true,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: <Color>[Color(0xFFB226B2), Color(0xFFFF4891)])),
              )),
          body: Column(
            children: [
              Image.asset('assets/images/education.png'),
              Text(
                'الخدمات المتاحة',
                style: TextStyle(fontSize: 27, color: HexColor('#32486d')),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Row(children: [
                SizedBox(width: size.width * 0.04),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, EducationPhotos.routeName);
                  },
                  child: Container(
                    child: Container(
                      width: size.width * 0.45,
                      height: size.height * 0.27,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFFB226B2), Color(0xFFFF4891)],
                        ),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        ),
                      ),
                      child: Center(
                        child: Text('صور',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.04,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context,Videos.routeName);
                  },
                  child: Container(
                    child: Container(
                      width: size.width * 0.45,
                      height: size.height * 0.27,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFFB226B2), Color(0xFFFF4891)],
                        ),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        ),
                      ),
                      child: Center(
                        child: Text('فيديوهات',
                            style:
                                TextStyle(fontSize: 18, color: Colors.white)),
                      ),
                    ),
                  ),
                )
              ])
            ],
          ),
        ),
      ),
    );
  }
}

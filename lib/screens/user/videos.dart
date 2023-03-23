import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:literacy/screens/user/education_photos.dart';
import 'package:literacy/screens/user/education_videos.dart';

class Videos extends StatefulWidget {
  static const routeName = '/videos';
  const Videos({super.key});

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => Scaffold(
          appBar: AppBar(
              title: Text("الفيديوهات"),
              centerTitle: true,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: <Color>[Color(0xFFB226B2), Color(0xFFFF4891)])),
              )),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/images/education.png'),
                Text(
                  'تعليم القرائة والكتابة',
                  style: TextStyle(fontSize: 27, color: HexColor('#32486d')),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Row(children: [
                  SizedBox(width: size.width * 0.04),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return EducationVideos(
                          url: 'https://www.youtube.com/watch?v=9dG8J5K4h5U',
                        );
                      }));
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
                          child: Text('الدرس الأول',
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return EducationVideos(
                          url: 'https://www.youtube.com/watch?v=1bcXH5wBbSg',
                        );
                      }));
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
                          child: Text("الدرس الثانى",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                        ),
                      ),
                    ),
                  )
                ]),
                SizedBox(height: 20.h,),
                 Row(children: [
                  SizedBox(width: size.width * 0.04),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return EducationVideos(
                          url: 'https://www.youtube.com/watch?v=V7C3psyqt4Q',
                        );
                      }));
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
                          child: Text("الدرس الثالث",
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return EducationVideos(
                          url: 'https://www.youtube.com/watch?v=-ywYh9Ef5KM',
                        );
                      }));
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
                          child: Text("الدرس الرابع",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                        ),
                      ),
                    ),
                  )
                ]),
                SizedBox(height: 20.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

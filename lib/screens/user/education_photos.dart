import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/photos_model.dart';

class EducationPhotos extends StatefulWidget {
  static const routeName = '/educationPhotos';
  const EducationPhotos({super.key});

  @override
  State<EducationPhotos> createState() => _EducationPhotosState();
}

class _EducationPhotosState extends State<EducationPhotos> {
  late DatabaseReference base;
  late FirebaseDatabase database;
  late FirebaseApp app;
  List<Photos> photosList = [];
  List<String> keyslist = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    fetchPhotos();
  }

  @override
  void fetchPhotos() async {
    app = await Firebase.initializeApp();
    database = FirebaseDatabase(app: app);
    base = database.reference().child("educationTools");
    base.onChildAdded.listen((event) {
      print(event.snapshot.value);
      Photos p = Photos.fromJson(event.snapshot.value);
      photosList.add(p);
      keyslist.add(event.snapshot.key.toString());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => Scaffold(
        appBar: AppBar(
            title: Text("الصور"),
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
            Expanded(
              flex: 8,
              child: ListView.builder(
                itemCount: photosList.length,
                itemBuilder: (BuildContext context, int index) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: SizedBox(
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, right: 15, left: 15, bottom: 10),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 15.w),
                                        child: Image.network(
                                            '${photosList[index].image.toString()}'),
                                      ),
                                      SizedBox(height: 10.h,),
                                      Text(
                                        '${photosList[index].Tooltitle.toString()}',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontFamily: 'ElMessiri',
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(height: 10.h,),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Text(
                                          'التاريخ : ${photosList[index].date.toString()}',
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Cairo'),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Text(
                                          'الوصف: ${photosList[index].description.toString()}',
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Cairo'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

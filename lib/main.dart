import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:literacy/screens/auth/login_page.dart';
import 'package:literacy/screens/auth/signup.dart';
import 'package:literacy/screens/auth/volunteer_login.dart';
import 'package:literacy/screens/user/education_photos.dart';
import 'package:literacy/screens/user/send_request.dart';
import 'package:literacy/screens/user/user_education.dart';
import 'package:literacy/screens/user/user_home.dart';
import 'package:literacy/screens/user/videos.dart';
import 'package:literacy/screens/volunteer/volunteer_home.dart';
import 'package:literacy/screens/volunteer/volunteer_request.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: FirebaseAuth.instance.currentUser == null
          ? const LoginPage()
          : FirebaseAuth.instance.currentUser!.displayName == 'متطوع'
              ? const VolunteerHome()
              : UserHome(),
      routes: {
        SignupPage.routeName: (ctx) => SignupPage(),
        LoginPage.routeName: (ctx) => LoginPage(),
        UserHome.routeName: (ctx) => UserHome(),
        VolunteerHome.routeName: (ctx) => VolunteerHome(),
        SendRequest.routeName: (ctx) => SendRequest(),
        UserEducation.routeName: (ctx) => UserEducation(),
        EducationPhotos.routeName: (ctx) => EducationPhotos(),
        Videos.routeName: (ctx) => Videos(),
        VolunteerLogin.routeName: (ctx) => VolunteerLogin(),
        VolunteerRequest.routeName: (ctx) => VolunteerRequest(),
      },
    );
  }
}

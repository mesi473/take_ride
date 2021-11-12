// import 'package:flutter/material.dart';
// import 'package:ride_test/front_page.dart';
// import 'package:get/get.dart';
// import 'package:ride_test/translation/translate.dart';

// import 'dart:async';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// Future<void> main() async {
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: FrontPage(),
//       localizationsDelegates: const [
//         TranslationDelegate(),
//         // GlobalMaterialLocalizations.delegate,
//         // GlobalWidgetsLocalizations.delegate,
//         // GlobalCupertinoLocalizations.delegate
//       ],
//       supportedLocales: const [
//         Locale('en', ''),
//         Locale('am', ''),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:ride_test/front_page.dart';
import 'package:ride_test/login_screen.dart';
import 'package:ride_test/provider/google_sign_in.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  // Create the initialization Future outside of `build`:
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Center(
            child: Text('Could not load app'),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return ChangeNotifierProvider(create: (context)=>GoogleSignInProvider(),
          child :GetMaterialApp(
            title: 'Phone Verification',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primaryColor: Colors.yellow,
                primarySwatch: Colors.yellow,
                inputDecorationTheme: InputDecorationTheme(
                    labelStyle: TextStyle(color: Colors.grey)),
                backgroundColor: Colors.white),
            home: LoginScreen(),
          ),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return FrontPage();
      },
    );
  }
}

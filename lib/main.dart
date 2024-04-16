import 'package:abapower/view/authenticationscreens/registerscreen.dart';
import 'package:abapower/view/screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controller/bindings.dart';


Future<void> main()async {
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp( ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.leagueSpartanTextTheme()
      ),
      initialBinding: GeneralBindings(),
      home: const RegistrationScreen()
    );
  }
}


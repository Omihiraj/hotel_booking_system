import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management_app/main_page.dart';
import 'package:hotel_management_app/providers/hotel_provider.dart';
import 'package:hotel_management_app/screens/auth/auth_screen.dart';
import 'package:hotel_management_app/screens/auth/sign_up_screen.dart';
import 'package:provider/provider.dart';

import 'screens/auth/sign_in_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HotelProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel Management App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const AuthScreen(),
    );
  }
}

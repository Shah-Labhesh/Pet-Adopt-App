import 'package:flutter/material.dart';
import 'package:pet_adoption_app/screens/EditProfileScreen.dart';
import 'package:pet_adoption_app/screens/FavoriteScreen.dart';
import 'package:pet_adoption_app/screens/FeedbackScreen.dart';
import 'package:pet_adoption_app/screens/LoginSreen.dart';
import 'package:pet_adoption_app/screens/PetDetailsScreen.dart';
import 'package:pet_adoption_app/screens/SignUpScreen.dart';
import 'package:pet_adoption_app/screens/addPetScreen.dart';
import 'package:pet_adoption_app/widget/PetCard.dart';

import 'screens/AppStartScreen.dart';
import 'screens/HomeScreen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        brightness: Brightness.light
      ),
      
      initialRoute: '/',
      routes: {
        '/': (context) => const AppStartScreen(),
        '/home' :(context) => HomeScreen(),
        '/login' :(context) =>  const LoginScreen(),
        '/signup' :(context) =>  SignUpScreen(),
        '/addPet' :(context) => AddPetScreen(),
        '/favorite' :(context) => Favorite(),
        '/feedback' :(context) => FeedbackScreen(),
        '/pet' :(context) => pets(),
        '/petDetails' :(context) => PetDetails(),
        '/editProfile' :(context) => EditProfile(),
        
      },
    );
  }
}


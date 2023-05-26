import 'package:flutter/material.dart';
import 'package:pet_adoption_app/widget/HomeDrawer.dart';
import 'package:pet_adoption_app/widget/PetCard.dart';

import '../data/Pet.dart';
import '../widget/HomeWidget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pets();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
          ),
          drawer: const MyDrawer(),
          body: Column(
            children: [
              HomeWidget(),
              Expanded(
                child: pets(),
                
              ),
            ],
          )),
    );
  }
}


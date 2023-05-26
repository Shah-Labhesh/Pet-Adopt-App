import 'package:flutter/material.dart';

import '../data/Pet.dart';
import '../screens/PetDetailsScreen.dart';

class pets extends StatefulWidget {
  pets({super.key});

  @override
  State<pets> createState() => _petsState();
}

class _petsState extends State<pets> {
  List<Pet> allPets = [
    Pet(
      id: 'D1',
      name: 'Buddy',
      type: 'Dog',
      breed: 'Poodle',
      gender: 'Male',
      age: '2 years',
      location: 'New York',
      description:
          'Buddy is a playful and friendly dog who loves to run and play fetch.',
      img: 'assets/images/D1.png',
    ),
    Pet(
      id: 'C1',
      name: 'Mittens',
      type: 'Cat',
      breed: 'Persian',
      gender: 'Female',
      age: '3 years',
      location: 'Los Angeles',
      description: 'Mittens is a cuddly cat who loves to be petted.',
      img: 'assets/images/D2.jpg',
    ),
    Pet(
      id: 'B1',
      name: 'Polly',
      type: 'Bird',
      breed: 'Parrot',
      gender: 'Female',
      age: '1 year',
      location: 'Chicago',
      description: 'Polly is a talkative parrot who loves to sing.',
      img: 'assets/images/D3.jpg',
    ),
    Pet(
      id: 'F1',
      name: 'Goldie',
      type: 'Fish',
      breed: 'Goldfish',
      gender: 'Male',
      age: '6 months',
      location: 'Houston',
      description: 'Goldie is a beautiful goldfish who loves to swim.',
      img: 'assets/images/F1.jpg',
    ),
    Pet(
      id: 'C1',
      name: 'Mittens',
      type: 'Cat',
      breed: 'Persian',
      gender: 'Female',
      age: '3 years',
      location: 'Los Angeles',
      description: 'Mittens is a cuddly cat who loves to be petted.',
      img: 'assets/images/D2.jpg',
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    allPets;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allPets.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/petDetails');
          },
          child: Container(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    allPets[index].img,
                    width: 300.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 200.0,
                      child: Text(
                        allPets[index].name,
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Text(allPets[index].age),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 200.0,
                      child: Text(
                        allPets[index].breed,
                        style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Text(
                      allPets[index].gender,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

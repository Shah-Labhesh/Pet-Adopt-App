import 'package:flutter/material.dart';
import 'package:pet_adoption_app/widget/ImageField.dart';

class AddPetScreen extends StatefulWidget {
  AddPetScreen({Key? key}) : super(key: key);

  @override
  State<AddPetScreen> createState() => _AddPetScreenState();
}

class _AddPetScreenState extends State<AddPetScreen> {
  List<String> type = <String>['Dog', 'Cat', 'Bird', 'Fish'];
  List<String> gender = <String>['Male', 'Female'];

  @override
  Widget build(BuildContext context) {
    String dropdownValue = type.first;
    String dropdownValue2 = gender.first;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add a Pet'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            SizedBox(child: ImageField()),
            const SizedBox(
              height: 40.0,
            ),
            Column(
              children: [
                const SizedBox(
                  width: 320.0,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Name',
                      focusColor: Colors.white,
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const SizedBox(
                  width: 320.0,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Age',
                      focusColor: Colors.white,
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const SizedBox(
                  width: 320.0,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Breed',
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const SizedBox(
                  width: 320.0,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Location',
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      elevation: 16,
                      style: const TextStyle(color: Colors.grey),
                      underline: Container(
                        height: 2,
                        color: Colors.grey,
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items: type.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    DropdownButton<String>(
                      value: dropdownValue2,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      elevation: 16,
                      style: const TextStyle(color: Colors.grey),
                      underline: Container(
                        height: 2,
                        color: Colors.grey,
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          dropdownValue2 = value!;
                        });
                      },
                      items:
                          gender.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 320.0,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Description',
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 330.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '');
                    },
                    // ignore: sort_child_properties_last
                    child: const Center(
                      child: Text(
                        "Add",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(18),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Set the border radius of the button
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

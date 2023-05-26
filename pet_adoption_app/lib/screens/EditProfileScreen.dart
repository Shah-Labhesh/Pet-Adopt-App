import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool _hide1 = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Edit profile'),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Icon(
            Icons.person,
            size: 190,
          ),
          Column(
            children: [
              SizedBox(
                width: 320.0,
                child: TextField(
                  decoration: const InputDecoration(
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
              SizedBox(
                width: 320.0,
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Email',
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
                width: 320.0,
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Phone Number',
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
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  SizedBox(
                    width: 320.0,
                    child: TextField(
                      obscureText: _hide1,
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _hide1 = !_hide1;
                      });
                    },
                    icon: Icon(
                      _hide1 ? Icons.visibility_off : Icons.visibility,
                      color: Colors.blueGrey,
                    ),
                  )
                ],
              ),
              SizedBox(height: 60.0,),
              SizedBox(
                width: 330.0,
                child: ElevatedButton(onPressed: () {
                  
                },
                  child: const Center(
                    child: Text(
                      "Save",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(15),
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
            ],
          ),
        ],
      ),
    ));
  }
}

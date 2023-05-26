import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _hide1 = true;
  bool _hide2 = true;

  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPhone = TextEditingController();
  final TextEditingController _controllerPass = TextEditingController();
  final TextEditingController _controllerConfirmPass = TextEditingController();

  void register(){
    String name =_controllerName.text;
    String email =_controllerEmail.text;
    String phone =_controllerPhone.text;
    String pass =_controllerPass.text;
    String confirmPass =_controllerConfirmPass.text;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: ListView(
        children: [
          Column(
            children: [
              const Image(
                image: AssetImage('assets/images/login.png'),
              ),
              const SizedBox(
                height: 40.0,
              ),
              SizedBox(
                width: 320.0,
                child: TextField(
                  controller: _controllerName,
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
                  controller: _controllerEmail,
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
                  controller: _controllerPhone,
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
                      controller: _controllerPass,
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
                  IconButton(onPressed: () {
                       
                  setState(() {
                      _hide1 =!_hide1;
                    });
                  }, icon: Icon(
                    _hide1 ? Icons.visibility_off : Icons.visibility,
                    color: Colors.blueGrey))
                ],
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
                      obscureText: _hide2,
                      controller: _controllerConfirmPass,
                      decoration: const InputDecoration(
                        hintText: 'Confirm Password',
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(onPressed: () {
                  setState(() {
                      _hide2 =!_hide2;
                    });
                  
                  }, icon: Icon(
                    _hide2 ? Icons.visibility_off : Icons.visibility,
                    color: Colors.blueGrey))
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              SizedBox(
                width: 330.0,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                  // ignore: sort_child_properties_last
                  child: const Center(
                    child: Text(
                      "Register",
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
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

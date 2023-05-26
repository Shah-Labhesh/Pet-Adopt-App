import "package:flutter/material.dart";
import "package:pet_adoption_app/screens/HomeScreen.dart";

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _hide = true;

  final _controllerForEmail = TextEditingController();
  final _controllerForPass = TextEditingController();

  void _login() {
    String email = _controllerForEmail.text;
    String password = _controllerForPass.text;
    if (email.isEmpty && password.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return const AlertDialog(
            title: Text('Empty!'),
            content: Text('Enter email and password'),
          );
        },
      );
    } else if (email.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return const AlertDialog(
            title: Text('Empty!'),
            content: Text('Enter email'),
          );
        },
      );
    } else if (password.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return const AlertDialog(
            title: Text('Empty!'),
            content: Text('Enter password'),
          );
        },
      );
    } else {
      if (email == 'Labhesh' && password == 'newuser') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Login successful.'),
            duration: Duration(seconds: 2),
          ),
        );
        Navigator.pushNamed(context, '/home');
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              title: Text('Failed!'),
              content: Text('Invalid email or password'),
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              const Image(
                image: AssetImage(
                  'assets/images/1.jpg',
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                width: 320.0,
                child: TextField(
                  controller: _controllerForEmail,
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
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  SizedBox(
                    width: 320.0,
                    child: TextField(
                      controller: _controllerForPass,
                      obscureText: _hide,
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
                        _hide = !_hide;
                      });
                    },
                    icon: Icon(
                      _hide ? Icons.visibility_off : Icons.visibility,
                      color: Colors.blueGrey,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 70.0,
              ),
              SizedBox(
                width: 330.0,
                child: ElevatedButton(
                  onPressed: _login,
                  // ignore: sort_child_properties_last
                  child: const Center(
                    child: Text(
                      "Login",
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
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Not registered yet?',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    child: TextButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.all(15),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w800,
                          ),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}

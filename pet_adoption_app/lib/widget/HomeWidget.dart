import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int _selectedIndex = 1;

  final List<String> _categories = ['Birds', 'Dogs', 'Cats', 'Fish'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 35.0,
            right: 30.0,
            top: 70.0,
            bottom: 20.0,
          ),
          child: const Text(
            'Find Awesome Pets',
            style: TextStyle(
              fontSize: 38.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 35.0,
            right: 30.0,
            top: 20.0,
            bottom: 20.0,
          ),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Search pet to adopt',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    15.0,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        ToggleSwitch(
          minWidth: 100.0,
          minHeight: 50.0,
          cornerRadius: 10.0,
          inactiveBgColor: const Color.fromARGB(90, 171, 205, 184),
          activeBgColor: Colors.lightBlue,
          activeFgColor: Colors.white,
          initialLabelIndex: _selectedIndex,
          labels: _categories,
          onToggle: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}

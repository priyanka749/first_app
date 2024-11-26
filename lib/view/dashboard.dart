import 'package:first_app/view/areaofcircle_view.dart';
import 'package:first_app/view/arithmetic_view.dart';
import 'package:first_app/view/simpleinterest_view.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedButton = -1; // State to track selected button

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 191, 214, 187),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildButton(
              context,
              text: 'Arithmetic',
              isSelected: selectedButton == 0,
              onPressed: () {
                setState(() {
                  selectedButton = 0;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ArithmeticView()),
                );
              },
            ),
            const SizedBox(height: 20),
            _buildButton(
              context,
              text: 'Simple Interest',
              isSelected: selectedButton == 1,
              onPressed: () {
                setState(() {
                  selectedButton = 1;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SimpleInterestView()),
                );
              },
            ),
            const SizedBox(height: 20),
            _buildButton(
              context,
              text: 'Area of Circle',
              isSelected: selectedButton == 2,
              onPressed: () {
                setState(() {
                  selectedButton = 2;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AreaofcircleView()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context,
      {required String text, required bool isSelected, required VoidCallback onPressed}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: isSelected ? 10 : 5,
        backgroundColor: isSelected ? Color.fromARGB(255, 216, 241, 216) : Color.fromARGB(255, 219, 243, 217),
        padding: const EdgeInsets.symmetric(vertical: 15),
       
         
        
      ),
      child: Text(
        text,
        style: const TextStyle( fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}

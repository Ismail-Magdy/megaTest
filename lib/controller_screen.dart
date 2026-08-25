import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:math' as math;

class ControllerScreen extends StatefulWidget {
  const ControllerScreen({super.key});

  @override
  State<ControllerScreen> createState() => _ControllerScreenState();
}

class _ControllerScreenState extends State<ControllerScreen> {
  // Select DataBase Path
  final DatabaseReference dbRef = FirebaseDatabase.instance.ref("command");

  // Change Value at FireBase
  void _sendCommand(String command) {
    dbRef.set(command);
  }

  Widget _buildSquareButton(IconData icon, String command, double angle) {
    return GestureDetector(
      onTapDown: (_) => _sendCommand(command),
      onTapUp: (_) => _sendCommand('S'),
      onTapCancel: () => _sendCommand('S'),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: const Color(0xFF1B243B),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Transform.rotate(
          angle: angle,
          child: Icon(icon, color: Colors.white, size: 28),
        ),
      ),
    );
  }

  Widget _buildDiamondButton(IconData icon, String command) {
    return GestureDetector(
      onTapDown: (_) => _sendCommand(command),
      onTapUp: (_) => _sendCommand('S'),
      onTapCancel: () => _sendCommand('S'),
      child: Transform.rotate(
        angle: math.pi / 4,
        child: Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            color: const Color(0xFF1B243B),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Transform.rotate(
            angle: -math.pi / 4,
            child: Icon(icon, color: Colors.white, size: 30),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'CONTROLLER',
          style: TextStyle(
            color: Color(0xFF1B243B),
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildSquareButton(
                    Icons.keyboard_double_arrow_up_rounded,
                    'FL',
                    -math.pi / 4,
                  ),
                  _buildDiamondButton(
                    Icons.keyboard_double_arrow_up_rounded,
                    'F',
                  ),
                  _buildSquareButton(
                    Icons.keyboard_double_arrow_up_rounded,
                    'FR',
                    math.pi / 4,
                  ),
                ],
              ),

              const SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildDiamondButton(
                    Icons.keyboard_double_arrow_left_rounded,
                    'L',
                  ),

                  Container(
                    width: 250,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black,
                    ),
                  ),

                  _buildDiamondButton(
                    Icons.keyboard_double_arrow_right_rounded,
                    'R',
                  ),
                ],
              ),

              const SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildSquareButton(
                    Icons.keyboard_double_arrow_down_rounded,
                    'BL',
                    math.pi / 4,
                  ),
                  _buildDiamondButton(
                    Icons.keyboard_double_arrow_down_rounded,
                    'B',
                  ),
                  _buildSquareButton(
                    Icons.keyboard_double_arrow_down_rounded,
                    'BR',
                    -math.pi / 4,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

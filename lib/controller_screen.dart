import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class ControllerScreen extends StatefulWidget {
  const ControllerScreen({super.key});

  @override
  State<ControllerScreen> createState() => _ControllerScreenState();
}

class _ControllerScreenState extends State<ControllerScreen> {
  final DatabaseReference dbRef = FirebaseDatabase.instance.ref("command");

  void _sendCommand(String command) {
    dbRef.set(command);
  }

  Widget _buildButton(IconData icon, String command) {
    return GestureDetector(
      onTapDown: (_) => _sendCommand(command),
      onTapUp: (_) => _sendCommand('S'),
      onTapCancel: () => _sendCommand('S'),
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: const Color(0xFF172946),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(icon, color: Color(0xffFFFFFF), size: 32),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFCFF),
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //
              Row(
                children: [
                  _buildButton(Icons.keyboard_double_arrow_left_rounded, "'L"),
                  const SizedBox(width: 40),
                  _buildButton(Icons.keyboard_double_arrow_right_rounded, "R"),
                ],
              ),
              //
              Image.asset("assets/photo.png", height: 186, width: 338),
              //
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildButton(Icons.keyboard_double_arrow_up_rounded, "F"),
                  const SizedBox(height: 40),
                  _buildButton(Icons.keyboard_double_arrow_down_rounded, "B"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

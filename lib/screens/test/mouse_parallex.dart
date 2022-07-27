import 'package:flutter/material.dart';
import 'dart:math';
import 'package:mouse_parallax/mouse_parallax.dart';

class MouseParallexEffect extends StatefulWidget {
  const MouseParallexEffect({Key? key}) : super(key: key);

  @override
  State<MouseParallexEffect> createState() => _MouseParallexEffectState();
}

class _MouseParallexEffectState extends State<MouseParallexEffect> {
  Offset pointer = Offset.zero;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MouseRegion(
        onExit: (eve) {
          setState(() {
            pointer = eve.position;
          });
        },
        onEnter: (eve) {
          setState(() {
            pointer = eve.position;
          });
        },
        onHover: (eve) {
          setState(() {
            pointer = eve.position;
          });
        },
        child: Center(
          child: Container(
            width: 250,
            height: 250,
            color: Colors.black,
            child: Transform.rotate(
              angle: pi / pointer.direction,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.deepOrange,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

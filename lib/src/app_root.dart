import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:petology/screens/home_screen.dart';
import 'package:petology/screens/login_screen.dart';
import 'package:petology/screens/request_screen.dart';

import '../screens/adaption_screen.dart';

class AppRoot extends StatefulWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  Offset pointer = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MouseRegion(
        cursor: SystemMouseCursors.none,
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
        child: Stack(
          children: [
            // const AdaptionScreen(),
            LoginScreen(),
            Positioned(
              left: pointer.dx,
              top: pointer.dy,
              child: Image.asset(
                'assets/images/cursor.png',
                height: 30,
                width: 50,
              ),
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

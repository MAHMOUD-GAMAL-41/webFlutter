import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../screens/adaption_screen.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/request_screen.dart';
import '../screens/sign_up_screen.dart';

class AppBarComponents extends StatelessWidget {
  const AppBarComponents({Key? key}) : super(key: key);
  final bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: HexColor("#56392D"),
      elevation: 0,
      title: Image.asset(
        'assets/images/Petology.png',
        width: 110,
        height: 110,
      ),
      automaticallyImplyLeading: true,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => HomeScreen(),
                    ),
                  );
                },
                child: Text(
                  'About us',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const AdaptionScreen(),
                    ),
                  );
                },
                child: Text(
                  'Categories',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => HomeScreen(),
                    ),
                  );
                },
                child: Text(
                  'Services',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const RequestScreen(),
                    ),
                  );
                },
                child: Text(
                  'Request',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 450,
              ),
              ElevatedButton(
                child: Text("Sign up"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const SignUpScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: isSelected ? Colors.brown : Colors.white,
                  onPrimary: !isSelected ? Colors.black : Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => LoginScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: isSelected ? Colors.brown : Colors.white,
                  onPrimary: !isSelected ? Colors.black : Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

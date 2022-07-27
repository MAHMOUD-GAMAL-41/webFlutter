import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petology/screens/home_screen.dart';
import 'package:petology/screens/login_screen.dart';
import 'package:petology/shared/appbar_components.dart';
import 'package:petology/shared/footer.dart';
import 'package:petology/utlis/navigation.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50),
        child: AppBarComponents(),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset('assets/images/Icon material-pets left hand.png',
              height: 200,
              width: 200,
              color: HexColor("#FFE3C5"),
              alignment: AlignmentDirectional.centerStart,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 400,
                    child: Stack(
                      children: [
                        Image.asset('assets/images/Icon material-pets right hand .png',
                          height: 50,
                          width: 50,
                          color: HexColor("#593C30"),
                          alignment: AlignmentDirectional.topStart,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 25,
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: HexColor("#180701"),
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(12)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    'Sign up',
                                    style: TextStyle(
                                      color: Colors.brown,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                                shape: MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                        borderRadius: BorderRadius.circular(15))),
                                                foregroundColor:
                                                MaterialStateProperty.all(Colors.black),
                                                padding: MaterialStateProperty.all(
                                                    const EdgeInsets.all(15)),
                                                backgroundColor:
                                                MaterialStateProperty.all(Colors.deepPurple),
                                                elevation: MaterialStateProperty.all(0)),
                                            onHover: (v) {},
                                            onLongPress: () {},
                                            onPressed: () {},
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: const [
                                                Icon(
                                                  Icons.facebook,
                                                  color: Colors.white,
                                                ),
                                                SizedBox(width: 30,),
                                                Text(
                                                  'Facebook',
                                                  style: TextStyle(color: Colors.white),
                                                ),
                                              ],

                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 40,),
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(15),
                                                border: Border.all(
                                                    color: Colors.grey, width: 1.5)),
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                    shape: MaterialStateProperty.all(
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius.circular(15))),
                                                    foregroundColor:
                                                    MaterialStateProperty.all(
                                                        Colors.black),
                                                    padding: MaterialStateProperty.all(
                                                        const EdgeInsets.all(15)),
                                                    backgroundColor:
                                                    MaterialStateProperty.all(
                                                        Colors.white),
                                                    elevation: MaterialStateProperty.all(0)),
                                                onHover: (v) {},
                                                onLongPress: () {},
                                                onPressed: () {},
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: const [
                                                    Icon(
                                                      Icons.g_translate,
                                                    ),
                                                    SizedBox(width: 30,),
                                                    Text('Google'),
                                                  ],
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                      children:
                                      [
                                        Expanded(
                                          child: new Container(
                                              margin:
                                              const EdgeInsets.only(left: 10, right: 15),
                                              child: Divider(
                                                color: Colors.black,
                                                height: 50,
                                              )),
                                        ),
                                        Text("Or",
                                          style: TextStyle(
                                            color: HexColor("#180701"),
                                          ),),
                                        Expanded(
                                          child: new Container(
                                              margin:
                                              const EdgeInsets.only(left: 15, right: 10),
                                              child: Divider(
                                                color: HexColor("#180701"),
                                                height: 50,
                                              )),
                                        ),
                                      ]),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      labelText: 'First Name',
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        print('First Name must not be empty');
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      labelText: 'Last Name',
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        print('Last Name must not be empty');
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      labelText: 'Email',
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        print('Email must not be empty');
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      labelText: 'Password',
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        print('Password must not be empty');
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      labelText: 'Re-Enter password',
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        print('Re-Enter password must not be empty');
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      labelText: 'Country',
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        print('Country must not be empty');
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  ElevatedButton(
                                    child: Text(
                                      "Sign up",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: HexColor("#FFE3C5"),
                                      ),
                                    ),
                                    onPressed: ()
                                    {
                                      AppNavigator.customNavigator(
                                          context: context,
                                          screen: HomeScreen(),
                                          finish: false,
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      fixedSize: Size(600, 50),
                                      primary: HexColor("492F24"),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(32.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextButton(
                                    onPressed: ()
                                    {
                                      AppNavigator.customNavigator(
                                        context: context,
                                        screen: LoginScreen(),
                                        finish: false,
                                      );
                                    },
                                    child: Text('Already have an account? login',
                                      style: TextStyle(
                                        color: HexColor("#492f24"),
                                      ),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Footer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

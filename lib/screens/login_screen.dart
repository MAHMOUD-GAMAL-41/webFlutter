import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petology/screens/home_screen.dart';
import 'package:petology/screens/sign_up_screen.dart';
import 'package:petology/shared/footer.dart';
import 'package:petology/utlis/navigation.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
  bool isSelected=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: HexColor("#56392D"),
        title: Text(
          'PETOLOGY',
          style: TextStyle(
            color: HexColor("#FFE3C5"),
          ),
        ),
        automaticallyImplyLeading: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'About us',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Services',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
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
                  onPressed: () {},
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
                  onPressed: () {},
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
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 400,
                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Image.asset('assets/images/dog_logo.png',
                      height: 150,
                      width: 150,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 134,
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
                                'Login',
                                style: TextStyle(
                                  color: Colors.brown,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
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
                              ElevatedButton(
                                child: Text(
                                  "Login",
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
                              Container(
                                alignment: Alignment.bottomRight,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Forget password?',
                                    style: TextStyle(
                                      color: HexColor("492F24"),
                                    ),
                                  ),
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
                              Padding(
                                padding: const EdgeInsets.all(23.0),
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
                              TextButton(
                                onPressed: ()
                                {
                                  AppNavigator.customNavigator(
                                  context: context,
                                  screen: SignUpScreen(),
                                  finish: false,
                                );
                                },
                                child: Text('Didnt have an account? sign up',
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
      ),
    );
  }
}

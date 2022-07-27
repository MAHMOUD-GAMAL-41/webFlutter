import 'package:flutter/material.dart';
import 'package:flutter_web_auth/flutter_web_auth.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petology/screens/adaption_screen.dart';
import 'package:petology/screens/home_screen.dart';
import 'package:petology/screens/request_screen.dart';
import 'package:petology/screens/sign_up_screen.dart';
import 'package:petology/shared/footer.dart';
import 'package:petology/utils/constants.dart';
import 'package:petology/utils/navigation.dart';
import '../services/api.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  bool isSelected = false;
  final ApiService api = ApiService();
  final TextEditingController emailCon = TextEditingController();
  final TextEditingController passCon = TextEditingController();
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => HomeScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'About us',
                    style: const TextStyle(
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
                  child: const Text(
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
                  child: const Text(
                    'Services',
                    style: const TextStyle(
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
                  child: const Text(
                    'Request',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 450,
                ),
                ElevatedButton(
                  child: const Text("Sign up"),
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
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  child: const Text(
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
                    Image.asset(
                      'assets/images/dog_logo.png',
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.brown,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                controller: emailCon,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
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
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                controller: passCon,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.0),
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
                              const SizedBox(
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
                                onPressed: () async {
                                  String token = await api.loginUserWithEmail(
                                      emailCon.text, passCon.text);
                                  token.isNotEmpty
                                      ? AppNavigator.customNavigator(
                                          context: context,
                                          screen: HomeScreen(),
                                          finish: false,
                                        )
                                      : print("Failed");
                                },
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(600, 50),
                                  primary: HexColor("492F24"),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                  ),
                                ),
                              ),
                              const SizedBox(
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
                              Row(children: [
                                Expanded(
                                  child: new Container(
                                      margin: const EdgeInsets.only(
                                          left: 10, right: 15),
                                      child: const Divider(
                                        color: Colors.black,
                                        height: 50,
                                      )),
                                ),
                                Text(
                                  "Or",
                                  style: TextStyle(
                                    color: HexColor("#180701"),
                                  ),
                                ),
                                Expanded(
                                  child: new Container(
                                      margin: const EdgeInsets.only(
                                          left: 15, right: 10),
                                      child: Divider(
                                        color: HexColor("#180701"),
                                        height: 50,
                                      )),
                                ),
                              ]),
                              Padding(
                                padding: const EdgeInsets.all(23.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                            shape: MaterialStateProperty.all(
                                                RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15))),
                                            foregroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.black),
                                            padding: MaterialStateProperty.all(
                                                const EdgeInsets.all(15)),
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.deepPurple),
                                            elevation:
                                                MaterialStateProperty.all(0)),
                                        onHover: (v) {},
                                        onPressed: () async {
                                          final result =
                                              await FlutterWebAuth.authenticate(
                                            url: kAuthFacebook,
                                            callbackUrlScheme:
                                                kFacebookCallback,
                                          );

// Extract token from resulting url
                                          final token = Uri.parse(result)
                                              .queryParameters['accessToken'];
                                          print(token);
                                          // js.context.callMethod(
                                          //     "open", [kAuthFacebook]);
                                          // await launchUrl(Uri.parse(kAuthFacebook),);
                                          // String res =
                                          //     await api.loginUserWithFB();
                                          // print(res);
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Icon(
                                              Icons.facebook,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 30,
                                            ),
                                            Text(
                                              'Facebook',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 40,
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border: Border.all(
                                                color: Colors.grey,
                                                width: 1.5)),
                                        child: ElevatedButton(
                                            style: ButtonStyle(
                                                shape: MaterialStateProperty.all(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15))),
                                                foregroundColor:
                                                    MaterialStateProperty.all(
                                                        Colors.black),
                                                padding: MaterialStateProperty.all(
                                                    const EdgeInsets.all(15)),
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        Colors.white),
                                                elevation:
                                                    MaterialStateProperty.all(
                                                        0)),
                                            onHover: (v) {},
                                            onLongPress: () {},
                                            onPressed: () async {
                                              final result =
                                                  await FlutterWebAuth
                                                      .authenticate(
                                                url: kAuthGoogle,
                                                callbackUrlScheme:
                                                    kGoogleCallback,
                                              );

// Extract token from resulting url
                                              final token = Uri.parse(result)
                                                      .queryParameters[
                                                  'accessToken'];
                                              print(token);
                                              // js.context.callMethod(
                                              //     "open", [kAuthGoogle]);
                                              // String res = await api
                                              //     .loginUserWithGoogle();
                                              // print(res);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Icon(
                                                  Icons.g_translate,
                                                ),
                                                SizedBox(
                                                  width: 30,
                                                ),
                                                Text('Google'),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  AppNavigator.customNavigator(
                                    context: context,
                                    screen: const SignUpScreen(),
                                    finish: false,
                                  );
                                },
                                child: Text(
                                  'Didnt have an account? sign up',
                                  style: TextStyle(
                                    color: HexColor("#492f24"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

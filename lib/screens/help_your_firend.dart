import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petology/shared/appbar_components.dart';
import 'package:petology/shared/default_drop_down.dart';
import 'package:petology/shared/footer.dart';

class HelpYourFriend extends StatelessWidget {
  const HelpYourFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 50),
        child: AppBarComponents(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/Icon material-pets left hand.png',
                    width: 200,
                    height: 200,
                    color: HexColor('#FFE3C5'),
                  ),
                  SizedBox(
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 134,
                      ),
                      child: Card(
                        color: Colors.transparent,
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
                                'Help Your Friend',
                                style: TextStyle(
                                  color: Colors.brown,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Image.asset(
                                'assets/images/Icon camera.png',
                                width: 50,
                                height: 50,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              DefaultDropDownButton(
                                text: 'Category',
                                items: const ['dogs','cats'],
                                validateText: 'category must not be empty',),
                              SizedBox(
                                height: 30,
                              ),
                              const Align(
                                alignment: AlignmentDirectional.bottomStart,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15.0, top: 20),
                                  child: Text(
                                    'Detect your current location',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.brown,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.3),offset: const Offset(0,2),
                                          blurRadius: 2
                                      )
                                    ]
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20,right: 3 ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      labelText: 'Location',
                                      suffixIcon: IconButton(
                                        onPressed: () {},
                                        icon: Align(
                                          widthFactor: 1.0,
                                          heightFactor: 1.0,
                                          child: Icon(Icons.location_on,
                                            color: HexColor("#492F24"),
                                          ),
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        print('location must not be empty');
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.3),offset: const Offset(0,2),
                                          blurRadius: 2
                                      )
                                    ]
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20,right: 3 ),
                                  child: TextFormField(
                                    keyboardType:TextInputType.phone ,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      labelText: 'Phone Number',
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        print('Phone Number must not be empty');
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(600, 50),
                                  primary: HexColor("492F24"),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                  ),
                                ),
                                child: Text(
                                  "Send",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: HexColor("#FFE3C5"),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(600, 50),
                                  primary: HexColor("FFE3C5"),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                  ),
                                ),
                                child: Text(
                                  "Call",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: HexColor("#492F24"),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
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

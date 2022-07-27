import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petology/shared/appbar_components.dart';
import 'package:petology/shared/default_drop_down.dart';
import 'package:petology/shared/footer.dart';

class RequestScreen extends StatelessWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 50),
        child: AppBarComponents(),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.asset('assets/images/Icon material-pets left hand.png',
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
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: HexColor("#180701"),
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            //mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                'Request',
                                style: TextStyle(
                                  color: Colors.brown,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Image.asset('assets/images/dog 6.png',
                                width: 300,
                                height: 300,
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
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      labelText: 'Name',
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        print('Category must not be empty');
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              DefaultDropDownButton(
                                text: 'Category',
                                items: const ['dogs','cats'],
                                validateText: 'category must not be empty',),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Year',
                                      items: const ['2021','2022'],
                                      validateText: 'year must not be empty',),
                                  ),
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Month',
                                      items: const ['july','jun','nov'],
                                      validateText: 'month must not be empty',),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Size',
                                      items: const ['50','260'],
                                      validateText: 'Size must not be empty',),
                                  ),
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Bread',
                                      items: const ['1','2','3'],
                                      validateText: 'bread must not be empty',),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Gender',
                                      items: const ['Male','Female'],
                                      validateText: 'gender must not be empty',),
                                  ),
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Bread',
                                      items: const ['1','2','3'],
                                      validateText: 'Bread must not be empty',),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Hair Length',
                                      items: const ['1','10'],
                                      validateText: 'Hair Length must not be empty',),
                                  ),
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Care & Behavior',
                                      items: const ['good','bad'],
                                      validateText: 'Care & Behavior must not be empty',),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'House Traind',
                                      items: const ['location','country'],
                                      validateText: 'House Traind must not be empty',),
                                  ),
                                  Expanded(
                                    child: DefaultDropDownButton(
                                      text: 'Color',
                                      items: const ['grey','black','white'],
                                      validateText: 'Color must not be empty',),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
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
                              const SizedBox(
                                height: 10,
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
                                height: 20,
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
                                height: 20,
                              ),
                              Container(
                                height: 130,
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
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      labelText: 'Description',
                                    ),
                                  ),
                                ),
                              ),
                              const Align(
                                alignment: AlignmentDirectional.bottomStart,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15.0, top: 20),
                                  child: Text(
                                    'Vaccinated (up to date)',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      color: Colors.brown,
                                    ),
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




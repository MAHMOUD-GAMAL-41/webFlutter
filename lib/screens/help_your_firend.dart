import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petology/cubit/webcubit_cubit.dart';
import 'package:petology/cubit/webcubit_state.dart';
import 'package:petology/shared/appbar_components.dart';
import 'package:petology/shared/footer.dart';


class HelpYourFriend extends StatelessWidget {
  const HelpYourFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double latitude = 0;
    double longitude = 0;

    TextEditingController locationController=TextEditingController();
    return BlocConsumer<WebcubitCubit, WebcubitState>(
      listener: (context, state) {
      },
      builder: (context, state) {

        return Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
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
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(12)),
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
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Image.asset('assets/images/Icon camera.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      labelText: 'Category',
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        print('Category must not be empty');
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional.bottomStart,
                                    child: Text(
                                      'Detect your current location',
                                      style: TextStyle(
                                        color: Colors.brown,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  TextFormField(
                                    obscureText: true,
                                    controller: locationController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      labelText: 'Location',
                                      suffixIcon: IconButton(
                                        onPressed: () async{
                                          Position position =await WebcubitCubit.get(context).determinePosition() ;
                                          print(position.longitude);
                                          print(position.latitude);
                                          WebcubitCubit.get(context).GetAdressFromLatLong(position);
                                          locationController.text=WebcubitCubit.get(context).address;
                                        },
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
                                        print('Location must not be empty');
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      labelText: 'Phone',
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        print('Phone must not be empty');
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  ElevatedButton(
                                    child: Text(
                                      "Send",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: HexColor("#FFE3C5"),
                                      ),
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      fixedSize: Size(600, 50),
                                      primary: HexColor("492F24"),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            32.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ElevatedButton(
                                    child: Text(
                                      "Call",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: HexColor("#492F24"),
                                      ),
                                    ),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      fixedSize: Size(600, 50),
                                      primary: HexColor("FFE3C5"),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            32.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
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
                  SizedBox(
                    height: 20,
                  ),
                  Footer(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor('#56392D'),
      height: 160,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        'For any qustion',
                        style: TextStyle(
                          color: HexColor("#FFE3C5"),
                          fontSize: 20,),
                      ),
                    ),
                    Image.asset('assets/images/Icon material-pets right hand .png',
                      width: 50,
                      height: 50,
                      color: HexColor("#FFE3C5"),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.email,
                        color: HexColor("#AE957B"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('Petology@gmail.com',
                        style: TextStyle(
                          color: HexColor("#AE957B"),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: HexColor('#AE957B'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '(+02)012345678',
                      style:TextStyle(
                          color: HexColor('#AE957B'
                          ), fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        'We are waiting you',
                        style: TextStyle(
                          color: HexColor("#FFE3C5"),
                          fontSize: 20,),
                      ),
                    ),
                    Image.asset('assets/images/Icon material-pets right hand .png',
                      width: 50,
                      height: 50,
                      color: HexColor("#FFE3C5"),
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    children: [
                      Icon(Icons.location_on,
                        color: HexColor("#AE957B"),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('First settlement/Cairo',
                        style: TextStyle(
                          color: HexColor("#AE957B"),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: HexColor('#AE957B'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Cairo/Egypt',
                      style:TextStyle(
                          color: HexColor('#AE957B'
                          ), fontSize: 15),
                    ),
                  ],
                ),

              ],
            ),
          ),
          //const Spacer(),
          Image.asset('assets/images/dog 2.png',
            alignment: AlignmentDirectional.bottomEnd,
            height: 160,
            width: 160,
          )
        ],
      ),
    );
  }
}

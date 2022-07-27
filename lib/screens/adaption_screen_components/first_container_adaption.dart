import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FirstContainerAdaptation extends StatefulWidget {
  const FirstContainerAdaptation({Key? key}) : super(key: key);

  @override
  State<FirstContainerAdaptation> createState() => _FirstContainerAdaptationState();
}

class _FirstContainerAdaptationState extends State<FirstContainerAdaptation> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Column(
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                    border:
                    Border.all(color: HexColor('#492F24'))),
                child: Column(
                  children: [
                    Image.asset('assets/images/cat 1.png',
                      height: 200,
                      width: 150,
                    ),
                    Text('Caty',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: HexColor('#492F24'),
                      )
                      ,),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              HexColor("#492F24"),
                            ),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0)
                                )
                            )
                        ),
                        child: Text(
                          "Read more",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: HexColor("#FFE3C5"),
                          ),
                        )
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                    border:
                    Border.all(color: HexColor('#492F24'))),
                child: Column(
                  children: [
                    Image.asset('assets/images/dog 4.png',
                      height: 200,
                      width: 150,
                    ),
                    Text('Elsa',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: HexColor('#492F24'),
                      )
                      ,),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              HexColor("#492F24"),
                            ),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                )
                            )
                        ),
                        child: Text(
                          "Read more",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: HexColor("#FFE3C5"),
                          ),
                        )
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                    border:
                    Border.all(color: HexColor('#492F24'))),
                child: Column(
                  children: [
                    Image.asset('assets/images/dog 5.png',
                      height: 200,
                      width: 150,
                    ),
                    Text('Doby',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: HexColor('#492F24'),
                      )
                      ,),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              HexColor("#492F24"),
                            ),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0)
                                )
                            )
                        ),
                        child: Text(
                          "Read more",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: HexColor("#FFE3C5"),
                          ),
                        )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

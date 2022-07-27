import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:petology/screens/adaption_screen_components/first_container_adaption.dart';
import 'package:petology/shared/appbar_components.dart';
import 'package:petology/shared/default_drop_down.dart';
import 'package:petology/shared/footer.dart';

import '../models/filters.dart';
import '../services/api.dart';

class AdaptionScreen extends StatefulWidget {
  const AdaptionScreen({Key? key}) : super(key: key);

  @override
  State<AdaptionScreen> createState() => _AdaptionScreenState();
}

class _AdaptionScreenState extends State<AdaptionScreen> {
  final ApiService api = ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 50),
        child: AppBarComponents(),
      ),
      body: FutureBuilder<Filters>(
        future: api.getPetFiltersByCategory(1),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Filters filters = snapshot.data!;
            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildColumn(
                          name: 'Bread',
                          drop: filters.breed,
                        ),
                        buildColumn(name: 'Age', drop: filters.ages),
                        buildColumn(name: 'Size', drop: filters.size),
                        buildColumn(
                          name: 'Good with',
                          drop: filters.goodWith,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildColumn(name: 'Gender', drop: [
                          filters.gender.male.toString(),
                          filters.gender.female.toString()
                        ]),
                        //SizedBox(width: 20,),
                        buildColumn(name: 'Color', drop: filters.colors),
                        //  SizedBox(width: 20,),
                        buildColumn(
                            name: 'Hair Length', drop: filters.hairLength),
                        // SizedBox(width: 20,),
                        buildColumn(
                          name: 'Care & Behavior',
                          drop: filters.behaviour,
                        ),
                        //   SizedBox(width: 20,)
                      ],
                    ),
                  ),
                  const FirstContainerAdaptation(),
                  const SizedBox(
                    height: 60,
                  ),
                  const FirstContainerAdaptation(),
                  const SizedBox(
                    height: 30,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Show more...',
                        style: TextStyle(
                          color: HexColor('#492F24'),
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Footer(),
                ],
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Column buildColumn({
    required String name,
    required List<String> drop,
  }) {
    return Column(
      children: [
        Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: HexColor('#492F24'),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: 200,
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(20),
              right: Radius.circular(20),
            ),
          ),
          child: DefaultDropDownButton(
            text: name,
            items: drop,
            validateText: 'must not be empty',
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petology/cubit/webcubit_cubit.dart';
import 'package:petology/screens/adaption_screen.dart';

import '../screens/help_your_firend.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WebcubitCubit(),
      child: MaterialApp(
        home: Stack(children:[

          HelpYourFriend(),
        MouseRegion(

          cursor: SystemMouseCursors.none,
          child: Stack(
            children: [

            ],
          ),
        )
        ]),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

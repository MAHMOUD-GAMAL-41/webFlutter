import 'package:flutter/material.dart';
import 'package:petology/shared/appbar_components.dart';


class AdaptionScreen extends StatelessWidget {
  const AdaptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50),
        child: AppBarComponents(),
      ),
    );
  }
}

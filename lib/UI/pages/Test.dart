import 'package:fakestore/UI/widgets/buttons/CircularIconButton.dart';
import 'package:flutter/material.dart';


class Test extends StatefulWidget {


  @override
  _TestState createState() => _TestState();


}

class _TestState extends State<Test> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              CircularIconButton(icon: Icons.translate),
              CircularIconButton(icon: Icons.account_tree_rounded),
              CircularIconButton(icon: Icons.ac_unit_outlined),
            ],
          ),
          Row(
            children: [
              CircularIconButton(icon: Icons.account_tree_outlined),
              Column(
                children: [
                  CircularIconButton(icon: Icons.airline_seat_flat_angled_rounded),
                  CircularIconButton(icon: Icons.arrow_upward),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }


}
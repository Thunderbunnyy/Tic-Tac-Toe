import 'package:flutter/material.dart';
import 'package:tictactoe_nourelhouda_eleuch/config/constants.dart';

import 'game_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(size.width / 8,),
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Text('Tic Tac Toe',
                      style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),

                  Padding(
                    padding: const EdgeInsets.only(top : 30.0),
                    child: Row(

                      children: [
                        Image.asset("assets/images/o.png",width: 150, height: 80.0,),
                        Image.asset("assets/images/X.png",width: 150, height: 80.0,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top : 30.0),
              child: Container(
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    border: Border.all(color: Colors.transparent, width: 2.0)),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Single Player',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top : 30.0),
              child: Container(
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    border: Border.all(color: Colors.transparent, width: 2.0)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const GameView()),
                    );
                  },
                  child: Text(
                    'With A Friend',
                    style: TextStyle(
                      color:
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

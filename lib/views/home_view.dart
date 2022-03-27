import 'package:flutter/material.dart';

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
        padding: EdgeInsets.only(top: size.height / 9, right: size.width / 5),
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
                  Row(
                    children: [],
                  ),
                ],
              ),
            ),
            Container(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Single Player',
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[100],
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
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

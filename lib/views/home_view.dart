import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Row(
              children: [

              ],
            ),
          ),
          Container(
            child: MaterialButton(
              onPressed: () {

              },
              minWidth: size.width * 0.9,
              shape: RoundedRectangleBorder(),
              child: Text(
                'Single Player',
                style: TextStyle(
                    fontSize: 18, color: Colors.white),
              ),
            ),
          ),
          Container(
            child: MaterialButton(
              onPressed: () {

              },
              minWidth: size.width * 0.9,
              shape: RoundedRectangleBorder(),
              child: Text(
                'With A Friend',
                style: TextStyle(
                    fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),

    );
  }
}

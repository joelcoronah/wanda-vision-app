import 'package:flutter/material.dart';
import 'package:wanda_vision_app/src/pages/character_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 2 - 50,
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/wandavision.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/logo.png',
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Opacity(
                    child: Image.asset(
                      'assets/images/back.jpg',
                      fit: BoxFit.fill,
                    ),
                    opacity: 0.5,
                  ),
                ),
                Center(
                  child: CharacterSlider(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

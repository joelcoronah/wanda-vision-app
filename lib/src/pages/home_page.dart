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
                Positioned(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(25),
                    child: Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.menu,
                            size: 30,
                            color: Colors.white60,
                          ),
                          onPressed: () {},
                        ),
                        // Image.asset('assets/images/WVLOGO.png'),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'WandaVision',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
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

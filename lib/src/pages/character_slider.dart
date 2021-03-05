import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wanda_vision_app/src/pages/character_card.dart';
import 'package:wanda_vision_app/src/utils/character_list.dart';

class CharacterSlider extends StatefulWidget {
  CharacterSlider({Key key}) : super(key: key);

  @override
  _CharacterSliderState createState() => _CharacterSliderState();
}

class _CharacterSliderState extends State<CharacterSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: characterList.length,
      itemBuilder: (BuildContext context, int itemIndex, int realIndex) =>
          CharacterCard(index: itemIndex),
      options: CarouselOptions(
        height: 310,
        enlargeCenterPage: true,
        viewportFraction: 0.5,
        initialPage: 1,
      ),
    );
  }
}

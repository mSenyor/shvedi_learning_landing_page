import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FadingImagesVisual extends StatefulWidget {
  const FadingImagesVisual({Key? key}) : super(key: key);

  @override
  State<FadingImagesVisual> createState() => _FadingImagesVisualState();
}

class _FadingImagesVisualState extends State<FadingImagesVisual> {

  int _currentIndex = 0;

  List<String> _images = [
    "red",
    'green',
    'blue',
    'white',
    'ambar',
  ];

  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 10), (timer) async {
      if(mounted) {
        setState(() {
          if(_currentIndex+1 == _images.length){
            _currentIndex=0;
          }
          else {
            _currentIndex++;
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(
        seconds: 5,
      ),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(
          child: child,
          opacity: animation,
        );
      },
      child: Image.asset(
        "${"images/carousel_images/"+_images[_currentIndex]}.jpeg",
        key: ValueKey<int>(_currentIndex),
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}


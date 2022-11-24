import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shvedi_learning_landing_page/constants.dart';

class ShvediVisualAndSlogan extends StatelessWidget {
  const ShvediVisualAndSlogan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[

        // visuals section
        CarouselSlider(
          options: CarouselOptions(
            height: 600.0,
            // disableCenter: true,
            autoPlay: true,
            autoPlayAnimationDuration: Duration(milliseconds: 2500),
          ),
          items: carouselImages
              .map((item) => Container(
            child: Center(
                child: Image.asset(item, fit: BoxFit.cover ,width: 1500)
            ),
          ),
          ).toList(),
        ),

        // slogan section
        Container(
          height: 600.0,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Flexible(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Stack(
                      children: <Widget>[
                        // stroke as border
                        Text(
                          // 'משפט מעולה שעושה חשק להמשיך לקרוא עוד',
                          'יש לך הזדמנות להיכנס לתחום תאורת הבמה עם ייתרון משמעותי על כולם, ולהינות ממקצוע נדיר נדרש ורווחי',
                          style: GoogleFonts.karantina(
                            textStyle: TextStyle(
                              // color: Colors.white,
                              fontSize: 52.0,
                              fontWeight: FontWeight.bold,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 6
                                ..color = Colors.black,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        //solid text fill
                        Text(
                          // 'משפט מעולה שעושה חשק להמשיך לקרוא עוד',
                          'יש לך הזדמנות להיכנס לתחום תאורת הבמה עם ייתרון משמעותי על כולם, ולהינות ממקצוע נדיר נדרש ורווחי',
                          textDirection: TextDirection.rtl,
                          style: GoogleFonts.karantina(
                            textStyle: const TextStyle(
                              fontSize: 52.0,
                              fontWeight: FontWeight.bold,
                              color: coldWhite,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


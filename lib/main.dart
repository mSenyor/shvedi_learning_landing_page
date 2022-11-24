import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shvedi_learning_landing_page/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shvedi_learning_landing_page/contact_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SHVEDI.COM',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'SHVEDI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        backgroundColor: darkColor,
        leading: Image.asset('images/logo.png'),
        title: Text("SHVEDI"),
        actions: [
          TextButton(
            onPressed: (){},
            style: TextButton.styleFrom(
              foregroundColor: warmWhite,
            ),
            child: Text(
              "הכשרה מקצועית",
              style: GoogleFonts.karantina(
                textStyle: TextStyle(
                  fontSize: 36,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: (){},
            style: TextButton.styleFrom(
              foregroundColor: warmWhite,
            ),
            child: Text(
              "קריירה",
              style: GoogleFonts.karantina(
                textStyle: TextStyle(
                  fontSize: 36,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: (){},
            style: TextButton.styleFrom(
              foregroundColor: warmWhite,
            ),
            child: Text(
              "שרותים לחברות",
              style: GoogleFonts.karantina(
                textStyle: TextStyle(
                  fontSize: 36,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: (){},
            style: TextButton.styleFrom(
              foregroundColor: warmWhite,
            ),
            child: Text(
              "יותר מתאורה",
              style: GoogleFonts.karantina(
                textStyle: TextStyle(
                  fontSize: 36,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: (){},
            style: TextButton.styleFrom(
              foregroundColor: warmWhite,
            ),
            child: Text(
              "על המיזם",
              style: GoogleFonts.karantina(
                textStyle: TextStyle(
                  fontSize: 36,
                ),
              ),
            ),
          ),

        ],
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[


            // visuals and slogan at the top of the page
            new Stack(
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
                                  style: GoogleFonts.karantina(
                                    textStyle: TextStyle(
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
            ),




            // anecdotal info about the advertised offer
            Container(
              child: Text(
                "אנחנו רוצים להזמין אותך לקחת חלק בקורס המקצועי היחיד מסוגו בארץ ולהשתלב בתחום התאורה. לצבור בתוך שבועות, כמות של ידע וניסיון, שבכל מצב אחר היה לוקח שנים של התלמדות בשטח, או אפילו עשורים. לתת לעצמך הזדמנות להפעיל גם את הראש וגם את הגוף, לעבוד בלוקיישנים בכל הארץ, לממש את היצירתיות שלך ולפתור בעיות, ותוך כדי גם להרוויח מעולה.",
                textAlign: TextAlign.center,
                style: GoogleFonts.assistant(
                  textStyle: TextStyle(
                    color: lightColor,
                    fontSize: 22,
                  ),
                ),
              ),
            ),



            // contact form stuff
            Container(
              child: ContactForm(
              ),
            ),

            // extra sell points beyond the screen edge
          ],
        ),
      ),


      // whatsapp link
      floatingActionButton: SizedBox(
        height: 100,
        width: 200,
        child: FloatingActionButton(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(5.0)
          ),
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Text("WHATSAPP")
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
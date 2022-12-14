import 'package:flutter/material.dart';
import 'package:shvedi_learning_landing_page/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shvedi_learning_landing_page/contact_form.dart';
import 'package:shvedi_learning_landing_page/fader_and_slogan.dart';
import 'package:shvedi_learning_landing_page/shvedi_contact_button.dart';




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
        title: const Text("SHVEDI"),
        actions: [
          TextButton(
            onPressed: (){},
            style: TextButton.styleFrom(
              foregroundColor: warmWhite,
            ),
            child: Text(
              "?????????? ??????????????",
              style: GoogleFonts.karantina(
                textStyle: const TextStyle(
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
              "????????????",
              style: GoogleFonts.karantina(
                textStyle: const TextStyle(
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
              "???????????? ????????????",
              style: GoogleFonts.karantina(
                textStyle: const TextStyle(
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
              "???????? ????????????",
              style: GoogleFonts.karantina(
                textStyle: const TextStyle(
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
              "???? ??????????",
              style: GoogleFonts.karantina(
                textStyle: const TextStyle(
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

            // alternative fading visuals
            // FadingImagesVisual(),
            //
            // SizedBox(
            //   child: VisualFrame(),
            //   height: MediaQuery.of(context).size.height/3,
            // ),
            SizedBox(child: FaderAndSlogan(),
            height: MediaQuery.of(context).size.height/4,),

            // visuals and slogan at the top of the page
            // const ShvediVisualAndSlogan(),




            // anecdotal info about the advertised offer
            Text(
              "?????????? ?????????? ???????????? ???????? ???????? ?????? ?????????? ?????????????? ?????????? ?????????? ????????, ?????????????? ?????????? ????????????. ?????????? ???????? ?????? ???????? ???? ?????? ?????????????? ???????? ?????? ?????? ?????? ???????? ???????? ???? ?????????????? ????????. ?????? ?????????? ?????????????? ???????????? ???? ???? ????????, ?????? ???? ????????. ?????????? ???????????????????? ?????? ????????, ???????? ???? ?????????????????? ??????, ???????? ?????? ???? ?????????????? ??????????.",
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
              style: GoogleFonts.assistant(
                textStyle: const TextStyle(
                  color: lightColor,
                  fontSize: 22,
                ),
              ),
            ),



            // contact form stuff
            const ContactForm(
            ),

            // extra sell points beyond the screen edge
          ],
        ),
      ),


      // whatsapp link
      floatingActionButton: const ShvediContactButton(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

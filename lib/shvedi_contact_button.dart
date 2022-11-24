import 'package:flutter/material.dart';
import 'package:shvedi_learning_landing_page/constants.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse(getWhatsappUrl());

class ShvediContactButton extends StatelessWidget {
  const ShvediContactButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 200,
      child: FloatingActionButton(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        onPressed: _launchUrl,
        tooltip: 'דברו איתנו בווטסאפ',
        child: const Text("WHATSAPP"),
      ),
    );
  }
}

// url launcher stuff for the whatsapp contact button
Future<void> _launchUrl() async {
  if (!await launchUrl(_url)){
    throw 'Could not launch $_url';
  }
}
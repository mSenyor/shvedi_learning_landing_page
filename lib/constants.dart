import 'dart:ui';

// colors
const primaryColor = Color(0xFF343434);
const warmWhite = Color(0xFFffa948);
const coldWhite = Color(0xFF88dcff);
const darkColor = Color(0xFF000000);
const lightColor = Color(0xFFffddaa);

// carousel images
const List<String> carouselImages = [
  'images/carousel_images/red.jpeg',
  'images/carousel_images/green.jpeg',
  'images/carousel_images/blue.jpeg',
  'images/carousel_images/white.jpeg',
  'images/carousel_images/ambar.jpeg',
];

// stuff for whatsapp link for contact
const contactPhone = "972544877933";
const contactMessage = "Hi, this is a test message for whatsapp contact button";

String makeWhatsappUrl(String phoneToMessage, String messageContent) {
  String formattedMessage = messageContent.replaceAll(" ", "%20");
  String url = "https://wa.me/"+phoneToMessage+"?text="+formattedMessage;
  return url;
}

String getWhatsappUrl(){
  return makeWhatsappUrl(contactPhone, contactMessage);
}
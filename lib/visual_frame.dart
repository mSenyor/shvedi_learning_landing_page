import 'package:flutter/material.dart';
import 'package:shvedi_learning_landing_page/fading_images_visual.dart';

class VisualFrame extends StatefulWidget {
  const VisualFrame({Key? key}) : super(key: key);

  @override
  State<VisualFrame> createState() => _VisualFrameState();
}

class _VisualFrameState extends State<VisualFrame> {

  double dimention = 502;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => ClipPath(
        clipper: CenterHolePath(dimention: dimention),
        child: FadingImagesVisual(),
      ),
    );
  }
}

class CenterHolePath extends CustomClipper<Path> {
  final double dimention;
  CenterHolePath({
    required this.dimention,
  });

  @override
  Path getClip(Size size) {
    final rect = Rect.fromLTRB(0, 0, size.width, dimention);

    final path = Path()
    ..fillType = PathFillType.evenOdd
      // ..addRect(
      //     Rect.fromCenter(center: Offset(size.width/2, size.height/2), width: dimention, height: dimention),
      // )
    ..addRect(rect);

    return path;
  }

  @override
  bool shouldReclip(covariant CenterHolePath oldClipper) {
    // throw UnimplementedError();
    return dimention != oldClipper.dimention;
  }

}
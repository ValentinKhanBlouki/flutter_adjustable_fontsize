import 'package:flutter/material.dart';

class RectangleRoundedCorners extends StatelessWidget {
  const RectangleRoundedCorners(
      {required this.child,
      this.radius = 14,
      this.color = Colors.black,
      this.outline = false,
      this.padding = const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      this.height,
      this.width,
      Key? key})
      : super(key: key);

  final EdgeInsets padding;
  final Widget child;
  final double radius;
  final Color color;
  final bool outline;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: Padding(padding: padding, child: child),
      decoration: outline
          ? BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1.5),
              borderRadius: BorderRadius.all(Radius.circular(radius)))
          : BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(radius))),
    );
  }
}

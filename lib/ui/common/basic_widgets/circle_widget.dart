import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  final double size;
  final Color color;
  final bool outline;
  final Widget? child;

  const CircleWidget(
      {Key? key,
      required this.size,
      required this.color,
      this.outline = false,
      this.child,
      Border? border})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size,
        width: size,
        decoration: outline
            ? BoxDecoration(
                border: Border.all(color: color, width: size * 0.08),
                shape: BoxShape.circle,
              )
            : BoxDecoration(color: color, shape: BoxShape.circle),
        // decoration:
        //     BoxDecoration(border: border, color: color, shape: BoxShape.circle),
        child: child);
  }
}

import 'package:flutter/cupertino.dart';
import 'package:fontsize_control/logic/state_management/font_size_control.dart';
import 'package:provider/provider.dart';

class SizeChangingIcon extends StatelessWidget {
  const SizeChangingIcon(this.iconData,
      {required this.defaultSize, required this.color, Key? key})
      : super(key: key);

  final IconData iconData;
  final double defaultSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    double size =
        defaultSize * Provider.of<FontSizeControl>(context).fontSizeFactor;
    return Icon(iconData, size: size, color: color);
  }
}

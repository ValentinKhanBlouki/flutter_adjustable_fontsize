import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fontsize_control/ui/common/basic_widgets/bottom_sheet.dart';
import 'package:fontsize_control/ui/common/fontsize_control/size_control_panel.dart';

class ZoomButton extends StatelessWidget {
  final Color? backgroundColor;
  const ZoomButton({this.backgroundColor, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialButton(
        color: backgroundColor,
        elevation: 0,
        child: const Icon(EvaIcons.maximize, //options2Outline,
            color: Colors.white,
            size: 34),
        onPressed: () => buildBottomSheet(context,
            relativeHeight: 0.5 * size.width / size.height,
            child: const FontSizerPanel(),
            caption: "Set Fontsize"));
  }
}

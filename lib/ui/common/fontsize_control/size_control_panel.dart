import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fontsize_control/logic/state_management/font_size_control.dart';
import 'package:fontsize_control/ui/common/basic_widgets/rectangle_rounded_corners.dart';
import 'package:provider/provider.dart';

class FontSizerPanel extends StatelessWidget {
  const FontSizerPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Set appropriate widget size parameters depending on screen size.
    FontSizeControl fsc = Provider.of<FontSizeControl>(context);
    double horizontalPadding = 16;
    double width = MediaQuery.of(context).size.width - 2 * horizontalPadding;
    double fontSize = width * 0.04;
    return Padding(
      padding: EdgeInsets.only(
          top: 30.0, left: horizontalPadding, right: horizontalPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Takes first half of width.
          SizedBox(
            width: width * 0.5,
            child: _buildFontChangeButton(context,
                iconData: EvaIcons.repeat,
                label: "Reset",
                muteButtonWidget:
                    (fsc.fontSizeFactor < 1.05 && fsc.fontSizeFactor > 0.95),
                width: width * 0.43,
                height: width * 0.23,
                fontSize: fontSize,
                onPressed: fsc.reset),
          ),
          // Takes second half of width.
          SizedBox(
            width: width * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: width * 0.02),
                    _buildFontChangeButton(context,
                        iconData: EvaIcons.minus,
                        label: "Shrink",
                        width: width * 0.23,
                        height: width * 0.23,
                        fontSize: fontSize,
                        onPressed: fsc.shrink),
                    SizedBox(width: width * 0.02),
                    _buildFontChangeButton(context,
                        iconData: EvaIcons.plus,
                        label: "Enlarge",
                        width: width * 0.23,
                        height: width * 0.23,
                        fontSize: fontSize,
                        onPressed:
                            Provider.of<FontSizeControl>(context, listen: false)
                                .enlarge),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFontChangeButton(
    BuildContext context, {
    required String label,
    required IconData iconData,
    required VoidCallback onPressed,
    required double width,
    required double height,
    required double fontSize,
    bool muteButtonWidget = false,
  }) {
    return RectangleRoundedCorners(
      width: width,
      height: height,
      child: MaterialButton(
        onPressed: () => onPressed(),
        splashColor: Colors.black,
        padding: EdgeInsets.zero,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.03),
              Icon(iconData,
                  size: height * 0.5,
                  color: muteButtonWidget ? Colors.grey : Colors.white),
              Text(label,
                  style: muteButtonWidget
                      ? TextStyle(fontSize: fontSize, color: Colors.grey)
                      : TextStyle(fontSize: fontSize))
            ],
          ),
        ),
      ),
    );
    // ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:fontsize_control/logic/state_management/font_size_control.dart';
import 'package:provider/provider.dart';

class SizeChangingText extends StatelessWidget {
  const SizeChangingText(this.string,
      {required this.style, this.textAlign, this.isHeader = false, Key? key})
      : super(key: key);
  final String string;
  final TextStyle style;
  final TextAlign? textAlign;
  final bool isHeader;

  @override
  Widget build(BuildContext context) {
    double sizeFactor;
    FontSizeControl fsc = Provider.of<FontSizeControl>(context);
    if (isHeader) {
      sizeFactor = fsc.headerSizeFactor;
    } else {
      sizeFactor = fsc.fontSizeFactor;
    }
    TextStyle textStyle =
        style.copyWith(fontSize: (style.fontSize ?? 16) * sizeFactor);

    return Text(string, style: textStyle, textAlign: textAlign);
  }
}

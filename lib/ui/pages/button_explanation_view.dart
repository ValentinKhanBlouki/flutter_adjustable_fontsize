import 'package:flutter/material.dart';
import 'package:fontsize_control/ui/common/size_changing_text.dart';

class ButtonExplanationView extends StatelessWidget {
  const ButtonExplanationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(height: 20),
        SizeChangingText(
          'Hello Friend 👋',
          isHeader: true,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),
        SizeChangingText(
          'You can press the button in the upper left to change the fontsize.\n\nThis app uses a class of text widgets, that get rebuilt as soon as the fontsize settings change.',
          style: TextStyle(fontSize: 16),
        ),
        Divider(height: 50, color: Colors.grey),
        Text(
          'For contrast, this is anormal text widget with a static fontsize.',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }
}

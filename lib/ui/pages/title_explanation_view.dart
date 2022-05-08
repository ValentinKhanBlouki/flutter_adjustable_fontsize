import 'package:flutter/material.dart';
import 'package:fontsize_control/ui/common/size_changing_text.dart';

class TitleExplanationView extends StatelessWidget {
  const TitleExplanationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(height: 20),
        SizeChangingText(
          'This is a Header',
          isHeader: true,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizeChangingText(
          'For Contrast: This is a large normal text',
          style: TextStyle(
              fontSize: 30, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),
        SizeChangingText(
          'The text widgets of this app have an initial base fontsize that gets multiplied with an adjustable scale factor.',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 15),
        SizeChangingText(
          'In order to prevent headers (that typically have a high base fontsize to begin with) from growing too quickly, you can optionally mark text widgets of headers as such, which makes them change in smaller increments.',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fontsize_control/ui/common/size_chaging_icon.dart';
import 'package:fontsize_control/ui/common/size_changing_text.dart';

class IconsExplanationView extends StatelessWidget {
  const IconsExplanationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const SizeChangingText(
          'About Icons',
          isHeader: true,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 15),
        const SizeChangingText(
          'This app also uses a class of icons that increase or decrease in accordance with the fontsize the user choses. Example:',
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 15),
        Wrap(
          children: const [
            SizeChangingIcon(EvaIcons.githubOutline,
                defaultSize: 30, color: Colors.white),
            SizeChangingIcon(EvaIcons.playCircleOutline,
                defaultSize: 30, color: Colors.white),
            SizeChangingIcon(EvaIcons.giftOutline,
                defaultSize: 30, color: Colors.white),
            SizeChangingIcon(EvaIcons.attach,
                defaultSize: 30, color: Colors.white),
            SizeChangingIcon(EvaIcons.moonOutline,
                defaultSize: 30, color: Colors.white),
          ],
        ),
        const Divider(
          height: 50,
          color: Colors.grey,
        ),
        const Text(
          'For contrast, here are normal icons with a static size:',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        const SizedBox(height: 15),
        Wrap(
          children: const [
            Icon(EvaIcons.githubOutline, size: 30, color: Colors.grey),
            Icon(EvaIcons.playCircleOutline, size: 30, color: Colors.grey),
            Icon(EvaIcons.giftOutline, size: 30, color: Colors.grey),
            Icon(EvaIcons.attach, size: 30, color: Colors.grey),
            Icon(EvaIcons.moonOutline, size: 30, color: Colors.grey),
          ],
        ),
      ],
    );
  }
}

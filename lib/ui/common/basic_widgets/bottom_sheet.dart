import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fontsize_control/ui/common/basic_widgets/circle_widget.dart';
import 'package:fontsize_control/ui/common/fontsize_control/size_control_panel.dart';

void buildBottomSheet(
  BuildContext context, {
  required Widget child,
  required String? caption,
  double relativeHeight = 0.618,
  bool enableFontSizeChange = false,
}) {
  // AppSettingsBloc appSettingsBloc =
  //     Provider.of<DataProvider>(context, listen: false).appSettingsBloc;
  showModalBottomSheet(
      context: context,
      // backgroundColor: Styles.getColor(context, ColorPurpose.plainBackground),
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      builder: (BuildContext bc) {
        Size size = MediaQuery.of(context).size;
        return SizedBox(
            height: size.height * relativeHeight,
            child: Stack(children: [
              // Little element with rounded corners at top of bottom sheet.
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 8,
                      decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: caption != null
                    ? const EdgeInsets.only(top: 50.0, bottom: 20)
                    : const EdgeInsets.only(top: 20.0, bottom: 20),
                child: SingleChildScrollView(
                    physics: const ClampingScrollPhysics(), child: child),
              ),

              caption != null
                  ? Positioned(
                      top: 20,
                      right: 0,
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 40,
                          child: Center(
                            child: Text(caption,
                                style: const TextStyle(
                                    // color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                          )))
                  : Container(),
              // // X - Button in upper right.
              enableFontSizeChange
                  ? Positioned(
                      top: 60,
                      right: 12,
                      child: MaterialButton(
                          child: const CircleWidget(
                            size: 34,
                            color: Colors.grey,
                            child: Icon(EvaIcons.maximizeOutline,
                                size: 28, color: Colors.white),
                          ),
                          onPressed: () => buildBottomSheet(context,
                              relativeHeight: 0.5 * size.width / size.height,
                              child: const FontSizerPanel(),
                              caption: "Fontsize Control")),
                    )
                  : Container(),
              // // X - Button in upper right.
              Positioned(
                top: 16,
                right: 0,
                child: MaterialButton(
                    child: const CircleWidget(
                        size: 34,
                        color: Colors.black,
                        child:
                            Icon(Icons.close, size: 28, color: Colors.white)),
                    onPressed: () => Navigator.of(context).pop()),
              ),
            ]));
      });
}

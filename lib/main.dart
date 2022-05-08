import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fontsize_control/logic/state_management/font_size_control.dart';
import 'package:fontsize_control/ui/common/fontsize_control/zoom_button.dart';
import 'package:fontsize_control/ui/common/size_changing_text.dart';
import 'package:fontsize_control/ui/pages/button_explanation_view.dart';
import 'package:fontsize_control/ui/pages/icons_explanation_view.dart';
import 'package:fontsize_control/ui/pages/title_explanation_view.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => FontSizeControl()),
      // Add more providers here.
    ], child: const FontsizeExampleApp()));

class FontsizeExampleApp extends StatelessWidget {
  const FontsizeExampleApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    ButtonExplanationView(),
    TitleExplanationView(),
    IconsExplanationView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fontsize Example'),
        // backgroundColor: Colors.black38,
        elevation: 0,
        leading: const ZoomButton(),
        //actions: [const ZoomButton()],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.maximize),
            label: 'The Button',
          ),
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.text),
            label: 'Text Widgets',
          ),
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.person),
            label: 'Icons',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

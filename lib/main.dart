import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.top]).then((value) => runApp(const MyApp()));


}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      theme: ThemeData.light().copyWith(
        colorScheme: const ColorScheme.light()
            .copyWith(), scaffoldBackgroundColor:Colors.black12,

      //Color(0x701e90ff),
      ),
      title: "OnBoarding Screen",
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}







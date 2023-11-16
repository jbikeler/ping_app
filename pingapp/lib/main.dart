import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:window_manager/window_manager.dart';
import 'package:pingapp/screens/desktop/home_screen_desktop.dart';
import 'package:pingapp/screens/mobile/home_screen_mobile.dart';

void main() async {

  Widget platformHome = const HomePageMobile();

  if (defaultTargetPlatform == TargetPlatform.windows) {
    WidgetsFlutterBinding.ensureInitialized();
    await windowManager.ensureInitialized();
    WindowManager.instance.setMinimumSize(const Size(380, 510));
    platformHome = const HomePageDesktop();
  }


  runApp(MyApp(platformHome)); //TODO 0: add provider wrappers
}

class MyApp extends StatelessWidget {

  Widget pingHome;

  MyApp(this.pingHome);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => pingHome,
        '/second': (context) => const HomePageMobile(),
      },
    );
  }
}
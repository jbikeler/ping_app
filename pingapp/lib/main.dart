import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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


  runApp(
    ProviderScope(
      child: MyApp(platformHome),
    )
  );
}

class MyApp extends StatelessWidget {

  final Widget pingHome;

  const MyApp(this.pingHome);

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

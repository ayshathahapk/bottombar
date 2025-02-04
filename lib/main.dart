import 'package:flutter/material.dart';
 import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'feature/home/bottomnavigation.dart';
import 'feature/home/bottompage.dart';
import 'feature/home/matubottom.dart';
import 'feature/home/nav.dart';



var height;
var width;
final localhostServer = InAppLocalhostServer(documentRoot: 'assets');
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
  //   await InAppWebViewController.setWebContentsDebuggingEnabled(kDebugMode);
  // }
  //
  // if (!kIsWeb) {
  //   await localhostServer.start();
  // }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.tealAccent,
        primarySwatch: Colors.deepOrange,
      ),
      home: NavigationBarScreen(),
    );
  }

}


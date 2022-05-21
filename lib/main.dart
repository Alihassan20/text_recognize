import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:text_recognize/text_rec/dart.dart';

import 'google_ml/providers/provider_setup.dart';
import 'google_ml/view/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // theme: ThemeData(
        //   primarySwatch: Colors.lightBlue,
        //   visualDensity: VisualDensity.adaptivePlatformDensity,
        //   primaryTextTheme: const TextTheme(
        //     headline6: TextStyle(color: Colors.white),
        //   ),
        // ),
        theme: ThemeData.dark(),
        darkTheme: ThemeData.dark(),
          home: const HomePage(),
        // ChangeNotifierProvider(
        //   create: (_) => TextRecognitionState(),
        //   child: TextRecognitionPage(),
        // ),
      ),
    );
  }
}


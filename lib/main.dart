import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:nasa/src/providers/recipeprovider.dart';
import 'package:nasa/src/screens/homepage.dart';

import 'package:nasa/src/screens/screens.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding.instance.addPostFrameCallback((_) {});
  SchedulerBinding.instance.addPostFrameCallback((_) {});
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => RecipeProvider(), lazy: false),
    ], child: const MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light()
          .copyWith(appBarTheme: const AppBarTheme(color: Colors.indigo)),
      title: 'SAHIL KHAN',
      initialRoute: 'homepage',
      routes: {
        // redirect to detail screen
        'homepage': (context) => const Homepage(), // redirect to home screen
      },
    );
  }
}

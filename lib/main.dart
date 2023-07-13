import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uniaccounts/ui/providers/theme_provider.dart';
import 'package:uniaccounts/ui/uniaccounts_app.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:uniaccounts/services/API/api_connection.dart';

void main() async {
  setPathUrlStrategy();
  api.initialize();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  ThemeProvider themeChangeProvider = ThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.setTheme =
        await themeChangeProvider.themePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: themeChangeProvider,
      child: const UniaccountsApp(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uniaccounts/ui/pages/error_page.dart';
import 'package:uniaccounts/ui/pages/signup_page.dart';
import 'package:uniaccounts/ui/pages/splash_page.dart';
import 'package:uniaccounts/ui/providers/theme_provider.dart';
import 'package:uniaccounts/ui/theme_preference.dart';
import 'package:provider/provider.dart';

class UniaccountsApp extends StatefulWidget {
  const UniaccountsApp({
    super.key,
  });

  @override
  State<UniaccountsApp> createState() => UniaccountsAppState();
}

class UniaccountsAppState extends State<UniaccountsApp> {
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: "/signup",
        builder: (context, state) => const SignUpPage(
          title: 'Home',
        ),
      ),
    ],
    errorBuilder: (context, state) => const ErrorPage(),
  );

  @override
  Widget build(BuildContext context) {
    final currentTheme = Provider.of<ThemeProvider>(context);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      theme:
          currentTheme.isDarkTheme() ? AppTheme.darkTheme : AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}

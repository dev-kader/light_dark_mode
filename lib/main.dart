
import 'package:flutter/material.dart';
import 'package:light_dark_mode/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dark Mode / Light Mode'),
      ),
      body: Center(
        child: Switch(
          value: themeProvider.themeModeType == ThemeModeType.dark,
          onChanged: (value) {
            final newThemeModeType = value ? ThemeModeType.dark : ThemeModeType.light;
            themeProvider.setThemeMode(newThemeModeType);
          },
        ),
      ),
    );
  }
}


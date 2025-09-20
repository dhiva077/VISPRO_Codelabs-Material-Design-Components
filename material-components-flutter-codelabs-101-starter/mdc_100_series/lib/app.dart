// Copyright 2018-present the Flutter authors. All Rights Reserved.

import 'category_menu_page.dart';
import 'model/product.dart'; // New code
import 'backdrop.dart'; // New code
import 'supplemental/cut_corners_border.dart';
import 'package:flutter/material.dart';
import 'colors.dart';
import 'home.dart';
import 'login.dart';

// TODO: Build a Shrine Theme (103)
final ThemeData _kShrineTheme = _buildShrineTheme();

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light(useMaterial3: true);
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: kShrineLoginField,            // warna tombol utama
      onPrimary: kShrineLoginBackground,     // warna teks di tombol utama
      secondary: kShrineLoginField,
      error: kShrineErrorRed,
    ),
    textTheme: _buildShrineTextTheme(base.textTheme),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: kShrineLoginBackground,
    ),
    appBarTheme: const AppBarTheme(
      foregroundColor: kShrineLoginField,       // warna teks/icon AppBar
      backgroundColor: kShrineLoginBackground,  // warna background AppBar
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: CutCornersBorder(),
      focusedBorder: CutCornersBorder(
        borderSide: BorderSide(
          width: 2.0,
          color: kShrineLoginField,
        ),
      ),
      floatingLabelStyle: TextStyle(
        color: kShrineLoginField,
      ),
    ),
  );
}

// TODO: Build a Shrine Text Theme (103)
TextTheme _buildShrineTextTheme(TextTheme base) {
  // Pertama apply style global
  final applied = base
      .copyWith(
        headlineSmall: base.headlineSmall!.copyWith(
          fontWeight: FontWeight.w500,
        ),
        titleLarge: base.titleLarge!.copyWith(
          fontSize: 18.0,
        ),
        bodySmall: base.bodySmall!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
        bodyLarge: base.bodyLarge!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: kShrineLoginField,
        bodyColor: kShrineLoginBackground,
      );

  // Override warna khusus untuk titleLarge supaya tidak ikut apply di atas
  return applied.copyWith(
  titleLarge: applied.titleLarge!.copyWith(
    color: kShrineLoginField, // <- ganti ke warna yang kamu mau
    fontWeight: FontWeight.bold,
  ),
);
}


// TODO: Convert ShrineApp to stateful widget (104)
class ShrineApp extends StatefulWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  _ShrineAppState createState() => _ShrineAppState();
}

class _ShrineAppState extends State<ShrineApp> {
  Category _currentCategory = Category.all;

  void _onCategoryTap(Category category) {
    setState(() {
      _currentCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dhiva Florist',    
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
        '/': (BuildContext context) => Backdrop(
              currentCategory: _currentCategory,
              frontLayer: HomePage(
                key: ValueKey(_currentCategory),
                category: _currentCategory,
              ),
              backLayer: CategoryMenuPage(
                currentCategory: _currentCategory,
                onCategoryTap: _onCategoryTap,
              ),
              frontTitle: const Text('Dhiva Florist'),
              backTitle: const Text('MENU'),
            ),
      },
      theme: _kShrineTheme, // New code
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tema_provider/blocs/theme.dart';

import 'package:tema_provider/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (_) => ThemeChanger( ThemeData.dark() ),
      child: MaterialAppWithTheme()
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final theme = Provider.of<ThemeChanger>(context);

    return MaterialApp(
      theme: theme.getTheme(),
      home: HomePage()
    );
  }
}

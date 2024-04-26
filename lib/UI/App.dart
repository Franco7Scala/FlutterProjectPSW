import 'package:fakestore/UI/behaviors/AppLocalizations.dart';
import 'package:fakestore/UI/pages/Layout.dart';
import 'package:fakestore/model/support/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


class App extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.APP_NAME,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      theme: ThemeData(
        primaryColor: Colors.indigo,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          background: Colors.white,
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Theme.of(context).colorScheme.primary.withOpacity(0.5);
                }
                return Colors.lightBlueAccent;
              },
            ),
          ),
        ),
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.amberAccent,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          background: Colors.black,
        ),
        canvasColor: Colors.black,
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return Theme.of(context).colorScheme.primary.withOpacity(0.5);
                }
                return Colors.amber;
              },
            ),
          ),
        ),
        cardColor: Colors.grey[800],
      ),
      home: Layout(title: Constants.APP_NAME),
    );
  }


}

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
        backgroundColor: Colors.white,
        buttonColor: Colors.lightBlueAccent,
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.amberAccent,
        backgroundColor: Colors.black,
        canvasColor: Colors.black,
        buttonColor: Colors.amber,
        cardColor: Colors.grey[800],
      ),
      home: Layout(title: Constants.APP_NAME),
    );
  }


}

import 'package:fakestore/model/support/extensions/StringCapitalization.dart';
import 'package:fakestore/UI/behaviors/AppLocalizations.dart';
import 'package:fakestore/UI/pages/Home.dart';
import 'package:fakestore/UI/pages/Search.dart';
import 'package:fakestore/UI/pages/UserRegistration.dart';
import 'package:fakestore/UI/pages/LogIn.dart';
import 'package:flutter/material.dart';


class Layout extends StatefulWidget {
  final String title;


  Layout({required this.title}) : super();

  @override
  _LayoutState createState() => _LayoutState(title);
}

class _LayoutState extends State<Layout> {
  late String title;


  _LayoutState(String title) {
    this.title = title;
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          title: Text(title),
          bottom: TabBar(
            tabs: [
              Tab(text: AppLocalizations.of(context)!.translate("home").capitalize, icon: Icon(Icons.home_rounded)),
              Tab(text: AppLocalizations.of(context)!.translate("search").capitalize, icon: Icon(Icons.search_rounded)),
              Tab(text: AppLocalizations.of(context)!.translate("user").capitalize, icon: Icon(Icons.person_rounded)),
              Tab(text: AppLocalizations.of(context)!.translate("log_in").capitalize, icon: Icon(Icons.animation)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Home(),
            Search(),
            UserRegistration(),
            LogIn(),
          ],
        ),
      ),
    );
  }


}

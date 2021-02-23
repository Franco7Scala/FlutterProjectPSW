import 'package:fakestore/UI/behaviors/AppLocalizations.dart';
import 'package:fakestore/UI/widgets/CircularIconButton.dart';
import 'package:fakestore/UI/widgets/InputField.dart';
import 'package:fakestore/model/support/extensions/StringCapitalization.dart';
import 'package:flutter/material.dart';


class Search extends StatefulWidget {
  Search({Key key}) : super(key: key);


  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController _searchFiledController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(
                children: [
                  Flexible(
                    child: InputField(
                      labelText: AppLocalizations.of(context).translate("search").capitalize,
                      controller: _searchFiledController,
                      onSubmit: (value) {
                        _search();
                      },
                    ),
                  ),
                  CircularIconButton(
                    icon: Icons.search_rounded,
                    onPressed: () {
                      _search();
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Icon(
                Icons.shopping_basket_outlined,
                size: 300,
              ),
            )
          ],
        ),
      ),
    );
  }

  void _search() {

  }


}

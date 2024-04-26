import 'package:fakestore/UI/behaviors/AppLocalizations.dart';
import 'package:fakestore/UI/widgets/buttons/CircularIconButton.dart';
import 'package:fakestore/UI/widgets/InputField.dart';
import 'package:fakestore/UI/widgets/ProductCard.dart';
import 'package:fakestore/model/Model.dart';
import 'package:fakestore/model/objects/Product.dart';
import 'package:fakestore/model/support/extensions/StringCapitalization.dart';
import 'package:flutter/material.dart';


class Search extends StatefulWidget {
  Search() : super();


  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool _searching = false;
  List<Product>? _products;

  TextEditingController _searchFiledController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            top(),
            bottom(),
          ],
        ),
      ),
    );
  }

  Widget top() {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Row(
        children: [
          Flexible(
            child: InputField(
              labelText: AppLocalizations.of(context)!.translate("search").capitalize,
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
    );
  }

  Widget bottom() {
    return  !_searching ?
              _products == null ?
                SizedBox.shrink() :
                _products!.length == 0 ?
                  noResults() :
                  yesResults() :
              CircularProgressIndicator();
  }

  Widget noResults() {
    return Text(AppLocalizations.of(context)!.translate("no_results").capitalize + "!");
  }

  Widget yesResults() {
    return Expanded(
      child: Container(
        child: ListView.builder(
          itemCount: _products!.length,
          itemBuilder: (context, index) {
            return ProductCard(
              product: _products![index],
            );
          },
        ),
      ),
    );
  }

  void _search() {
    setState(() {
      _searching = true;
      _products = null;
    });
    Model.sharedInstance.searchProduct(_searchFiledController.text)?.then((product) {
      setState(() {
        _searching = false;
        _products = product;
      });
    });
  }


}

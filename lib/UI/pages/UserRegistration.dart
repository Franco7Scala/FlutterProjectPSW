import 'package:fakestore/UI/behaviors/AppLocalizations.dart';
import 'package:fakestore/UI/widgets/CircularIconButton.dart';
import 'package:fakestore/UI/widgets/InputField.dart';
import 'package:fakestore/model/Model.dart';
import 'package:fakestore/model/objects/User.dart';
import 'package:fakestore/model/support/extensions/StringCapitalization.dart';
import 'package:flutter/material.dart';


class UserRegistration extends StatefulWidget {
  UserRegistration({Key key}) : super(key: key);


  @override
  _UserRegistrationState createState() => _UserRegistrationState();
}

class _UserRegistrationState extends State<UserRegistration> {
  TextEditingController _firstNameFiledController = TextEditingController();
  TextEditingController _lastNameFiledController = TextEditingController();
  TextEditingController _telephoneNumberFiledController = TextEditingController();
  TextEditingController _emailFiledController = TextEditingController();
  TextEditingController _addressFiledController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text(
                AppLocalizations.of(context).translate("register").capitalize + "!",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Column(
                children: [
                  InputField(
                    labelText: AppLocalizations.of(context).translate("firstName").capitalize,
                    controller: _firstNameFiledController,
                  ),
                  InputField(
                    labelText: AppLocalizations.of(context).translate("lastName").capitalize,
                    controller: _lastNameFiledController,
                  ),
                  InputField(
                    labelText: AppLocalizations.of(context).translate("telephoneNumber").capitalize,
                    controller: _telephoneNumberFiledController,
                  ),
                  InputField(
                    labelText: AppLocalizations.of(context).translate("email").capitalize,
                    controller: _emailFiledController,
                  ),
                  InputField(
                    labelText: AppLocalizations.of(context).translate("address").capitalize,
                    controller: _addressFiledController,
                  ),
                  CircularIconButton(
                    icon: Icons.person_rounded,
                    onPressed: () {
                      _register();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<User> _register() {
    User user = User(
      firstName: _firstNameFiledController.text,
      lastName: _lastNameFiledController.text,
      telephoneNumber: _telephoneNumberFiledController.text,
      email: _emailFiledController.text,
      address: _addressFiledController.text,
    );
    return Model.sharedInstance.addUser(user);
  }


}

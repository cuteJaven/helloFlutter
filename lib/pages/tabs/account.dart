import 'package:flutter/material.dart';
import 'package:tour_app/pages/account/authenticate/authenticate.dart';
import 'package:tour_app/models/user.dart';
import 'package:provider/provider.dart';
import 'package:tour_app/pages/account/myinfo/myinfo_page.dart';

class AccountWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    //return either myinfo or Authenticate widget
    if (user == null) {
      return AuthenticatePage();
    } else {
      return MyInfoPage();
    }
  }
}

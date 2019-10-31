import 'package:flutter/material.dart';
import 'package:mockup_login_singup/src/login/pages/LoginPage.dart';
import 'package:mockup_login_singup/src/login/pages/SingInPage.dart';
import 'package:mockup_login_singup/src/login/pages/SingUpPage.dart';
import 'package:mockup_login_singup/src/login/provider/ProviderPageController.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {

	PageController _controller;

	@override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 1);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset("assets/imgs/mountain.jpg", fit: BoxFit.cover),

          ProviderPageController(pController: _controller,
              child:PageView(
                controller: _controller,
                children: <Widget>[
                  SingUpPage(),
                  LoginPage(),
                  SingInPage(),
                ],
              ))

          //PageView
        ],
      ),
    );
  }
}

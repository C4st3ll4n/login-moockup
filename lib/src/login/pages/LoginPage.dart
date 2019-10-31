import 'package:flutter/material.dart';
import 'package:mockup_login_singup/src/login/provider/ProviderPageController.dart';
import 'package:mockup_login_singup/widgets/CircleButton.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    PageController _controller = ProviderPageController.get(context);

    return Container(
      color: Theme.of(context).accentColor.withOpacity(0.9),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.headset_mic, color: Colors.white, size: 40),
          RichText(
              text: TextSpan(
                  text: "Awesome",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  children: [
                TextSpan(
                    text: "App", style: TextStyle(fontWeight: FontWeight.bold))
              ])),
          Container(height: 200),
          CircleButton(
            label: "SING UP",
            backgroundColor: Colors.transparent,
            borderColor: Colors.white,
	          onTap: () {
              _controller.animateToPage(0, duration: Duration(milliseconds: 450), curve: Curves.easeInOut);
	          },
          ),
          Container(height: 20),
          CircleButton(
              label: "LOGIN",
              backgroundColor: Colors.white,
              textColor: Theme.of(context).accentColor,
	          onTap: (){
              _controller.animateToPage(2, duration: Duration(milliseconds: 450), curve: Curves.easeInOut);

	          },
          ),
        ],
      ),
    );
  }
}

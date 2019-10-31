import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mockup_login_singup/src/login/provider/ProviderPageController.dart';
import 'package:mockup_login_singup/widgets/CircleButton.dart';
import 'package:mockup_login_singup/widgets/MyTextField.dart';

class SingUpPage extends StatefulWidget {
  @override
  _SingUpPageState createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.90),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.headset_mic,
            color: Theme.of(context).accentColor,
            size: 50,
          ),
          Container(
            height: 50,
          ),
          MyTextField(label: "EMAIL", hint: "email@email.com"),
          Container(
            height: 25,
          ),
          MyTextField(label: "SENHA", hint: "********"),
          Container(
            height: 25,
          ),
          MyTextField(label: "CONFIRMAÇÃO DE SENHA", hint: "********"),
          Container(
            height: 25,
          ),
          Container(
            width: double.infinity,
            child: GestureDetector(
	            onTap: (){
		            ProviderPageController.of(context).toPage(2);
	            },
              child: Text(
                "Já tenho uma conta",
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor),
              ),
            ),
          ),
          Container(
            height: 25,
          ),
          CircleButton(label: "SING UP")
        ],
      ),
    );
  }
}

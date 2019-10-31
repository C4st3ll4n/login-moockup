import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mockup_login_singup/widgets/CircleButton.dart';
import 'package:mockup_login_singup/widgets/MyTextField.dart';

class SingInPage extends StatefulWidget {
  @override
  _SingInPageState createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> {
  Widget _forgotText() {
    return Container(
      width: double.infinity,
      child: Text(
        "Esqueci minha senha",
        textAlign: TextAlign.right,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Theme.of(context).accentColor),
      ),
    );
  }

  Widget _separador() {
    return Row(
      children: <Widget>[
        Expanded(
            child: Divider(
          thickness: 4,
        )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("OU CONECTE-SE COM",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 14)),
        ),
        Expanded(
            child: Divider(
          thickness: 4,
        ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.9),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(height: 60),
          Icon(Icons.headset_mic,
              color: Theme.of(context).accentColor, size: 40),
          Spacer(),
          MyTextField(label: "EMAIL", hint: "email@email.com"),
          Container(height: 25),
          MyTextField(label: "SENHA", hint: "********"),
          Container(height: 25),
          _forgotText(),
          Container(height: 25),
          CircleButton(label: "LOGIN"),
          Container(height: 25),
          _separador(),
          Container(height: 25),
          Row(
            children: <Widget>[
              Expanded(
                  child: CircleButton(
                      label: "FACEBOOK",
                      icon: Icon(
                        FontAwesomeIcons.facebookF,
                        color: Colors.white,
                        size: 14,
                      ),
                      backgroundColor: Colors.blue[800])),
              Container(
                width: 10,
              ),
              Expanded(
                  child: CircleButton(
                      label: "GOOGLE",
                      icon: Icon(
                        FontAwesomeIcons.google,
                        size: 14,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.red[700]))
            ],
          ),
          Container(height: 20)
        ],
      ),
    );
  }
}

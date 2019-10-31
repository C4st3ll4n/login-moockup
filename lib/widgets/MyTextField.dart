import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String label;
  final String hint;

  const MyTextField({Key key, this.label="", this.hint=""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Text(label,style: TextStyle(color: Theme.of(context).accentColor,
        fontWeight: FontWeight.bold, fontSize: 16),),
        SizedBox(height: 10),
        TextField(
          autofocus: false,
          decoration: InputDecoration(
              hintText:
                 hint /*, labelText: "Email", icon: Icon(Icons.email)*/,
              disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).accentColor)),
              enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Theme.of(context).accentColor))),
        ),
      ]),
    );
  }
}

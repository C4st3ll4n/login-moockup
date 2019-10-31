import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  final Widget icon;
  final Function onTap;

  const CircleButton({
    Key key,
    this.label = "",
    this.backgroundColor,
    this.textColor,
    this.borderColor,
    this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Material(
        borderOnForeground: true,
        color: backgroundColor == null
            ? Theme.of(context).accentColor
            : backgroundColor,
        child: InkWell(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                border: borderColor == null
                    ? null
                    : Border.all(color: borderColor)),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: icon == null ? Container(width: 0) : icon,
                ),
                Center(
                    child: Text(label,
                        style: TextStyle(
                            color: textColor == null
                                ? Colors.white
                                : this.textColor,
                            fontWeight: FontWeight.bold))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

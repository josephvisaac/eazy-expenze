import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final presentDatePicker;
  final String text = 'Choose Date';
  AdaptiveFlatButton(this.presentDatePicker);
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: presentDatePicker,
          )
        : FlatButton(
            textColor: Theme.of(context).primaryColor,
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: presentDatePicker,
          );
  }
}

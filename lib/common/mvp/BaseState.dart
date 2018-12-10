import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pdam/common/mvp/IBaseView.dart';


abstract class BaseState<T extends StatefulWidget> extends State<T> implements IBaseView {

  Widget build(BuildContext context);

  @override
  set context(BuildContext context) {
    this.context = context;
  }

  @override
  void showToastMessage(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT
    );
  }

  @override
    void showSnackBar(BuildContext context, String msg) {
      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text(msg),    
          duration: Duration(milliseconds: 1500),
        )
      );
    }

}
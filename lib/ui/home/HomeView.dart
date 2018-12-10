
import 'package:flutter/material.dart';
import 'package:pdam/common/mvp/BaseState.dart';
import 'package:pdam/common/mvp/BaseView.dart';
import 'package:pdam/ui/home/HomeContract.dart';

class HomeView extends BaseView{

  @override
  get title => "HOME";

 @override
  get routeName => Navigator.defaultRouteName;

  @override
  Widget buildContent(BuildContext context) {
    return _HomeView();
  }
}

class _HomeView extends StatefulWidget {
  @override
  __HomeViewState createState() => __HomeViewState();
}

class __HomeViewState extends BaseState<_HomeView> implements HomeV  {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: GridView.count(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          CardMenu()
        ],
      ),      
    );
  }
}

class CardMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0.5,
            child: Text("Items "),
      );
  }
}
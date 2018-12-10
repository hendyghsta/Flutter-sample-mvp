import 'package:flutter/material.dart';
import 'package:pdam/ui/sample/SampleView.dart';

abstract class BaseView extends StatefulWidget {

  String get title => this.routeName;
  String get routeName => '/${this.runtimeType.toString()}';
  Widget buildContent(BuildContext context);

  @override
  _BaseViewState createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

    final drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('hendyghsta'),
      accountEmail: Text('user.name@email.com'),
      currentAccountPicture: CircleAvatar(
        child: FlutterLogo(size: 42.0),
        backgroundColor: Colors.white,
      ),
      otherAccountsPictures: <Widget>[
        CircleAvatar(
          child: Text('A'),
          backgroundColor: Colors.yellow,
        ),
        CircleAvatar(
          child: Text('B'),
          backgroundColor: Colors.red,
        )
      ],
    );

    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          title: Text('To page 1'),
          onTap: () => Navigator.push(context, MaterialPageRoute(
            builder: (context) => SampleView(1)
          ))
        ),
        ListTile(
          title: Text('To page 2'),
        ),
        ListTile(
          title: Text('other drawer item'),
          onTap: () {},
        ),
      ],
    );

  

    return Scaffold(
      appBar: AppBar(
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(this.widget.title),
        ),
      ),
      drawer: this.widget.routeName == Navigator.defaultRouteName ? Drawer(child: drawerItems,) : null,
      body: Builder(
        builder: (BuildContext context) {
          return this.widget.buildContent(context);
        },
      ),
    );
  }
}

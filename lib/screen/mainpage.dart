import 'package:flutter/material.dart';
import 'package:projectapp/screen/login.dart';
import 'package:projectapp/screen/managerice.dart';
import 'package:projectapp/utility/mystyle.dart';
import 'package:projectapp/widget/listrice.dart';

class Mainpage extends StatefulWidget {
  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                MaterialPageRoute materialPageRoute = MaterialPageRoute(
                    builder: (BuildContext context) => Login());
                Navigator.of(context).push(materialPageRoute);
              })
        ],
        title: Text('หน้าหลัก'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: <Color>[Colors.white, Colors.blue],
            radius: 1.0,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[],
            ),
          ),
        ),
      ),
      drawer: managerice(),
    );
  }

  Drawer managerice() => Drawer(
        child: ListView(
          children: <Widget>[
            showhead(),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('จัดการรายการข้าว'),
              onTap: () {
                MaterialPageRoute materialPageRoute = MaterialPageRoute(
                    builder: (BuildContext context) => Managerice());
                Navigator.of(context).push(materialPageRoute);
              },
            )
          ],
        ),
      );

  UserAccountsDrawerHeader showhead() {
    return UserAccountsDrawerHeader(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('image/ricce.jpg'), fit: BoxFit.cover),
        ),
        accountName: Text('ผู้จัดการร้าน'),
        accountEmail: Text('เข้าสู่ระบบแล้ว'));
  }
}

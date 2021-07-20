import 'package:flutter/material.dart';
import 'package:projectapp/screen/mainpage.dart';
import 'package:projectapp/widget/listrice.dart';

class Managerice extends StatefulWidget {
  @override
  _ManagericeState createState() => _ManagericeState();
}

class _ManagericeState extends State<Managerice> {
  //field
  Widget currentwidget = Listrice();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('จัดการรายการข้าว'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.backspace),
              onPressed: () {
                MaterialPageRoute materialPageRoute = MaterialPageRoute(
                    builder: (BuildContext context) => Mainpage());
                Navigator.of(context).push(materialPageRoute);
              })
        ],
      ),
      drawer: managerice(),
      body: currentwidget,
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
                setState(() {
                  currentwidget = Listrice();
                });
                Navigator.pop(context);
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

import 'package:flutter/material.dart';
import 'package:projectapp/screen/mainpage.dart';
import 'package:projectapp/utility/mystyle.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var ctrlid = new TextEditingController();
  var ctrlpassword = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('เข้าสู่ระบบ'),
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
              children: <Widget>[
                showlogo(),
                linebox(),
                showtext(),
                linebox(),
                id(),
                linebox(),
                password(),
                linebox(),
                loginbutton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget showlogo() {
    return Container(
      width: 120.0,
      child: Image.asset('Image/market.jpg'),
    );
  }

  Widget showtext() {
    return Text(
      'ชัยวิวัฒน์ค้าข้าว',
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  Widget id() {
    return Container(
      width: 250.0,
      child: TextField(
        controller: ctrlid,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.assignment_ind),
          labelStyle: TextStyle(color: Colors.black),
          labelText: 'ผู้ใช้:',
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent)),
        ),
      ),
    );
  }

  Widget password() {
    return Container(
      width: 250.0,
      child: TextField(
        controller: ctrlpassword,
        obscureText: true,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock),
          labelStyle: TextStyle(color: Colors.black),
          labelText: 'รหัสผ่าน:',
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent)),
        ),
      ),
    );
  }

  Widget loginbutton() => Container(
        width: 250.0,
        height: 50.0,
        child: RaisedButton.icon(
          onPressed: () {
            if (ctrlid.text != "" || ctrlpassword.text != "") {
              MaterialPageRoute materialPageRoute = MaterialPageRoute(
                  builder: (BuildContext context) => Mainpage());
              Navigator.of(context).push(materialPageRoute);
            } else {
              normalDialog(context, 'กรุณากรอกข้อมูลให้ครบ');
            }
          },
          color: Colors.green,
          icon: Icon(
            Icons.check,
            color: Colors.white,
          ),
          label: Text(
            'เข้าสู่ระบบ',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );

  Future<void> normalDialog(BuildContext context, String messige) async {
    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text(messige),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    'OK',
                    style: TextStyle(color: Colors.red),
                  )),
            ],
          ),
        ],
      ),
    );
  }

  Widget linebox() {
    return SizedBox(
      height: 16.0,
      width: 8.0,
    );
  }
}

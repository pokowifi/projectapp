import 'package:flutter/material.dart';
import 'package:projectapp/screen/managerice.dart';

class Edit extends StatefulWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('เพิ่มสินค้า'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.backspace),
              onPressed: () {
                MaterialPageRoute materialPageRoute = MaterialPageRoute(
                    builder: (BuildContext context) => Managerice());
                Navigator.of(context).push(materialPageRoute);
              })
        ],
      ),
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                groupimage(),
                linebox(),
                ricetype(),
                linebox(),
                rice(),
                linebox(),
                price(),
                linebox(),
                amount(),
                linebox(),
                datein(),
                linebox(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row groupimage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.add_a_photo,
            size: 30.0,
          ),
          onPressed: () {},
        ),
        Container(
          width: 250.0,
          child: Image.asset('image/market.png'),
        ),
        IconButton(
          icon: Icon(
            Icons.add_photo_alternate,
            size: 30.0,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget ricetype() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 250.0,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'ประเภทข้าว :',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      );

  Widget rice() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 250.0,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'ข้าว :',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      );

  Widget price() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 250.0,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'ราคา :',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      );

  Widget amount() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 250.0,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'จำนวน :',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      );

  Widget datein() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 250.0,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'วันที่ :',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      );

  Widget linebox() {
    return SizedBox(
      height: 8.0,
      width: 8.0,
    );
  }
}

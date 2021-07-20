import 'package:flutter/material.dart';
import 'package:projectapp/screen/edit.dart';
import 'package:projectapp/utility/mystyle.dart';

class Listrice extends StatefulWidget {
  const Listrice({Key? key}) : super(key: key);

  @override
  _ListriceState createState() => _ListriceState();
}

class _ListriceState extends State<Listrice> {
  void routetoaddrice() {
    MaterialPageRoute materialPageRoute = MaterialPageRoute(
      builder: (context) => Edit(),
    );
    Navigator.push(context, materialPageRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        addandedit(),
        mystyle().titlecenter(context, 'ไม่มีสินค้า'),
      ],
    );
  }

  Row addandedit() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(right: 16.0, bottom: 16.0),
              child: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  print('click floating');
                  routetoaddrice();
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

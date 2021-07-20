import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class mystyle {
  TextStyle maintitle = TextStyle(
      fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black);

  Widget titlecenter(BuildContext context, String string) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Text(
          string,
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  mystyle();
}

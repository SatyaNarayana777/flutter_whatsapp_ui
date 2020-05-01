import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterwhatsappui/model/chat_model.dart';

class CHAT extends StatefulWidget {
  @override
  _CHATState createState() => _CHATState();
}

class _CHATState extends State<CHAT> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, i) => Column(
              children: <Widget>[
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(dummyList[i].imageUrl),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        dummyList[i].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        dummyList[i].time,
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  subtitle: Text(
                    dummyList[i].message,
                    style: TextStyle(color: Colors.grey, fontSize: 16.0),
                  ),
                )
              ],
            )
    );
  }
}

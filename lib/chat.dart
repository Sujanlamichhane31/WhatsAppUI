import 'package:flutter/material.dart';
import 'chatmodel.dart';

class ChatScreenScreen extends StatefulWidget {
  @override
  _ChatScreenScreenState createState() => _ChatScreenScreenState();
}

class _ChatScreenScreenState extends State<ChatScreenScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) {
        return Column(
          children: [
            Divider(
              height: 10.0,
            ),
            ListTile(
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                
                backgroundImage: NetworkImage(dummyData[i].imgUrl),
                
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dummyData[i].name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    dummyData[i].time,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
              subtitle: Container(
                padding: EdgeInsets.only(
                  top: 5.0,
                ),
                child: Text(
                  dummyData[i].name,
                  style: TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

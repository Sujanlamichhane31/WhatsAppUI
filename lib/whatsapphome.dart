import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/call.dart';
import 'package:whatsapp_ui/camera.dart';
import 'package:whatsapp_ui/chat.dart';
import 'package:whatsapp_ui/status.dart';

// ignore: must_be_immutable
class WhatsAppHome extends StatefulWidget {
  final List<CameraDescription> cameras;
  WhatsAppHome({this.cameras});
  
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin{
  
  TabController _tabController;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp"
        ),
        elevation: 0.7,
        bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: [
              new Tab(
                icon: Icon(Icons.camera_alt),
              ),
              new Tab(
                text: "CHATS",
              ),
              new Tab(
                text: "STATUS",
              ),
              new Tab(
                text: "CALLS",
              )
            ]),
        actions: [
          Icon(Icons.search),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0),),
          Icon(Icons.more_vert)
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraScreen(cameras: widget.cameras),
          ChatScreenScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message,
        color: Colors.white,),
        onPressed: (){
          print('Done');
        },
      ),
    );
  }
}

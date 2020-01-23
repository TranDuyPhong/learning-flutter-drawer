import "package:flutter/material.dart";

class MainPage extends StatefulWidget {
    State<StatefulWidget> createState() {
        return new MainPageState();
    }
}

class MainPageState extends State<MainPage> {
    var title = 'Hello';

    Drawer _buildDrawer(context) {
        return new Drawer(
            child: new ListView(
                children: <Widget>[
                    new DrawerHeader(
                        decoration: new BoxDecoration(
                            color: Colors.blue
                        ),
                        child: new Container(
                            child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                    new Image.asset(
                                        'images/avt.jpg',
                                        fit: BoxFit.cover,
                                        width: 80,
                                        height: 80,
                                    ),
                                    new Text(
                                        'Trần Duy Phong',
                                        style: new TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                        ),
                                    ),
                                    new Text(
                                        'Super Junior Developer',
                                        style: new TextStyle(
                                            color: Colors.white
                                        ),
                                    )
                                ],
                            ),
                        ),
                    ),
                    new ListTile(
                        leading: new Icon(Icons.photo_album),
                        title: new Text('Photos'),
                        onTap: () {
                            setState(() {
                              this.title = 'Photos';
                            });
                            Navigator.pop(context);
                        },
                    ),
                    new ListTile(
                        leading: new Icon(Icons.notifications),
                        title: new Text('Notifications'),
                        onTap: () {
                            setState(() {
                              this.title = 'Notifications';
                            });
                            Navigator.pop(context);
                        },
                    ),
                    new ListTile(
                        leading: new Icon(Icons.settings),
                        title: new Text('Settings'),
                        onTap: () {
                            setState(() {
                              this.title = 'Settings';
                            });
                            Navigator.pop(context);
                        },
                    ),
                    new Divider(
                        indent: 20.0,
                        color: Colors.black45,
                    ),
                    new ListTile(
                        title: new Text('About us'),
                    ),
                    new ListTile(
                        title: new Text('Privicy'),
                    )
                ],
            ),
        );
    }

    @override 
    Widget build(BuildContext buildContext) {
        return new Scaffold(
            appBar: new AppBar(
                title: new Text("Drawer"),
            ),
            body: new Center(
                child: new Text(
                    this.title,
                    style: new TextStyle(
                        fontSize: 24.0,
                        color: Colors.black 
                    ),
                ),
            ),
            drawer: _buildDrawer(buildContext),
        );
    }
}
import 'package:flutter/material.dart';

class CommentScreen extends StatelessWidget {
  final controlComment = new TextEditingController();
  bool _validate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comments"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          new Card(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Container(
                  padding: new EdgeInsets.only(top: 16.0),
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        'user123456',
                        style: new TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Roboto',
                            color: new Color(0xFF26C6DA)),
                      )
                    ],
                  ),
                ),
                new Text('Very good photo!'),
              ],
            ),
          ),
          new Card(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Container(
                  padding: new EdgeInsets.only(top: 16.0),
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        'george2577',
                        style: new TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Roboto',
                            color: new Color(0xFF26C6DA)),
                      )
                    ],
                  ),
                ),
                new Text('Incredible!'),
              ],
            ),
          ),
          new Card(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Container(
                  padding: new EdgeInsets.only(top: 16.0),
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        'alex0045',
                        style: new TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Roboto',
                            color: new Color(0xFF26C6DA)),
                      )
                    ],
                  ),
                ),
                new Text('I love it!'),
              ],
            ),
          ),
          new Card(
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Container(
                  padding: new EdgeInsets.only(top: 16.0),
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Text(
                        '_luis23_',
                        style: new TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Roboto',
                            color: new Color(0xFF26C6DA)),
                      )
                    ],
                  ),
                ),
                new Text('Muy chula la foto!'),
              ],
            ),
          ),
          TextField(
            controller: controlComment,
            decoration: InputDecoration(
              labelText: 'Comment',
              errorText: _validate ? ' Please write a valid comment!' : null,
            ),
          ),
          // ignore: deprecated_member_use
          RaisedButton(
            onPressed: () {
              if (controlComment.text.isEmpty) {
                controlComment.text.isEmpty
                    ? _validate = true
                    : _validate = false;
              }
            },
            child: Text('SAVE COMMENT'),
            textColor: Colors.white,
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}

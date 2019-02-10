import 'package:flutter/material.dart';
import 'model/post.dart';
// import 'model/post.dart';
// import 'postDetail.dart';

/// Opens an [AlertDialog] showing what the user typed.
class ExampleWidget extends StatefulWidget {
  ExampleWidget({Key key}) : super(key: key);

  @override
  _ExampleWidgetState createState() => new _ExampleWidgetState();
}

/// State for [ExampleWidget] widgets.
class _ExampleWidgetState extends State<ExampleWidget> {
  var _usernameController = new TextEditingController();
  var _emailController = new TextEditingController();
// typealias MyClosureType = 
  // var myCloure: () => Post;
  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      appBar: new AppBar(
        title: new Text(
          'Add Notification', 
          style: new TextStyle(
            fontSize: 18.0, //textsize
            // color: Colors.white, // textcolor
          ),),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.done), onPressed: _done),
          // new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildForm(),
    );
  }

void _done() {
  DateTime now = new DateTime.now();
  DateTime.parse("2012-02-27 13:27:00");
  var post = Post(
    title: _usernameController.text,
    author: _emailController.text,
    description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
    imageUrl: 'https://resources.ninghao.org/images/contained.jpg',
    createTime: now.toString()
  );
  Navigator.pop(context, post);
}

  Widget _buildForm() {
    return new Column(
      children: <Widget>[
        Padding(
          child: new Text(
            "Title",
            textAlign: TextAlign.center,
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          padding: EdgeInsets.only(bottom: 10.0),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: 'title'),
          controller: _usernameController,
        ),
        Padding(
          child: new Text(
            "Content",
            textAlign: TextAlign.center,
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          padding: EdgeInsets.only(bottom: 10.0),
        ),
        TextFormField(
          decoration: InputDecoration(labelText: "detail"),
          controller: _emailController,
        ),
        // new RaisedButton(
        //   child: Text("点击跳转"),
        //   onPressed: () {
        //     var route = new MaterialPageRoute(
        //       builder: (BuildContext context) => new SecondPage(
        //           value: User(
        //               account: _usernameController.text,
        //               email: _emailController.text)),
        //     );
        //     Navigator.of(context).push(route);
        //   },
        // )
      ],
    );
  }
}

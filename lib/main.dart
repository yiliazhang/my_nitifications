import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'addNotification.dart';
import 'model/post.dart';
import 'postDetail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      // home: new RandomWords(),
      home: new RandomWords(),
      routes: <String, WidgetBuilder> {
        // 这里可以定义静态路由，不能传递参数
        '/router/second': (_) => new ExampleWidget(),
        // '/router/home': (_) => new RouterHomePage(),
      },
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  var _left = 0.0;
  var list = <Post>[];
  final _suggestions = <Post>[];
  final _saved = new Set<Post>();
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final _contentFont = const TextStyle(fontSize: 12.0);
   @override
  Widget build(BuildContext context) {
    // final wordPair = new WordPair.random();
    // return new Text(wordPair.asPascalCase);
    return new Scaffold (
      appBar: new AppBar(
        title: new Text('Notifications'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.favorite), onPressed: _pushSaved),
        ],
      ),
       floatingActionButton: FloatingActionButton( //悬浮按钮
          child: Icon(Icons.add),
          onPressed:_addItem
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _listItemBuilder(BuildContext context, int index) {
    final alreadySaved = _saved.contains(list[index]);
    var _left = 100.0;
    return 
    Column(
      children: <Widget>[
        // AspectRatio(
        //   aspectRatio: 16/9,
        //   child: Image.network(list[index].imageUrl, fit: BoxFit.cover),
        // ),
        SizedBox(height: 16.0),
        Text(
          list[index].title,
          style: Theme.of(context).textTheme.title,
        ),
        Text(
          list[index].createTime,
          style: Theme.of(context).textTheme.subhead,
        ),
        Text(
          list[index].author,
          style: Theme.of(context).textTheme.subhead,
        ),
        // IconButton(icon: new Icon(
        //   alreadySaved ? Icons.favorite : Icons.favorite_border,
        //   color: alreadySaved ? Colors.red : null,
        //   ), onPressed: _switchFavouriteOne),
        SizedBox(height: 16.0)
      ],
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: _listItemBuilder,
    );
  }

  void _switchFavouriteOne() {
    bool contained = false;
    final item = Post(
      title: 'Space Skull',
      author: 'Mohamed Chahin',
      description: 'Esse ut nulla velit reprehenderit veniam sint nostrud nulla exercitation ipsum. Officia deserunt aliquip aliquip excepteur eiusmod dolor. Elit amet ipsum labore sint occaecat dolore tempor officia irure voluptate ad. Veniam laboris deserunt aute excepteur sit deserunt dolor esse dolor velit sint nulla anim ut. Reprehenderit voluptate adipisicing culpa magna ea nulla ullamco consectetur. Cupidatat adipisicing consequat adipisicing sit consectetur dolor occaecat.',    
      imageUrl: 'https://resources.ninghao.org/images/space-skull.jpg',
      createTime: '2019-01-01',
    );
    if (contained) {
      _saved.remove(item);
    } else {
      _saved.add(item);
    }
  }

  void _switchFavourite(bool contained, Post item) {
    if (contained) {
      _saved.remove(item);
    } else {
      _saved.add(item);
    }
  }

  void _addItem() {
    Navigator.of(context).pushNamed('/router/second').then((value) {
       
      setState(() {
        if (value == null) {
          return;
        }
        if (list.length == 0) {
          list.add(value);
        } else {
          list.insert(0, value);
        }
       });
      print(value.toString());
    });
  }

  void _pushSaved() {
    Navigator.of(context).push(
      new MaterialPageRoute(
      builder: (context) {
        final tiles = _saved.map(
          (pair) {
            return new ListTile(
              title: new Text(
                'Hello Yilia, I am here.',
                style: _biggerFont,
              ),
            );
          },
        );
        final divided = ListTile
          .divideTiles(
            context: context,
            tiles: tiles,
          )
          .toList();
          return new Scaffold(
          appBar: new AppBar(
            title: new Text('Saved Suggestions'),
          ),
          body: new ListView(children: divided),
        );
      },
    ),
    );
  }
}

class _Drag extends StatefulWidget {
  @override
  _DragState createState() => new _DragState();
}

class _DragState extends State<_Drag> with SingleTickerProviderStateMixin {

  // double _top = 0.0; //距顶部的偏移
  double _left = 0.0;//距左边的偏移

  @override
  Widget build(BuildContext context) {
    return
    Stack(
      children: <Widget>[
        Positioned(
          // top: _top,
          left: _left,
          child: GestureDetector(
            child: CircleAvatar(child: Text("A")),
            //手指按下时会触发此回调
            onPanDown: (DragDownDetails e) {
              //打印手指按下的位置(相对于屏幕)
              print("用户手指按下：${e.globalPosition}");
            },
            //手指滑动时会触发此回调
            onPanUpdate: (DragUpdateDetails e) {
              //用户手指滑动时，更新偏移，重新构建
              setState(() {
                _left += e.delta.dx;
                // _top += e.delta.dy;
              });
            },
            onPanEnd: (DragEndDetails e){
              //打印滑动结束时在x、y轴上的速度
              print(e.velocity);
            },
          ),
        )
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'model/post.dart';

class PostDetail extends StatelessWidget {

  final Post post;

  PostDetail({
    this.post
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            // AspectRatio(
            //   aspectRatio: 16/9,
            //   child: Image.network(post.imageUrl, fit: BoxFit.cover),
            // ),
            Container(
              padding: EdgeInsets.all(32.0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('${post.title}', style: Theme.of(context).textTheme.title),
                  Text('${post.createTime}', style: Theme.of(context).textTheme.subhead),
                  Text('${post.author}', style: Theme.of(context).textTheme.subhead)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
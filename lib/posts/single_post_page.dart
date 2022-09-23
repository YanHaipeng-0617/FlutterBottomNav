import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:futter_bottom_navigation/data/app_data.dart';

class SinglePostPage extends StatelessWidget {
  final int postId;

  const SinglePostPage({Key? key, @pathParam required this.postId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final post = Post.posts[postId - 1];
    return Scaffold(
      backgroundColor: post.color,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(post.title, style: Theme.of(context).textTheme.headline3),
              Text(
                post.content,
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

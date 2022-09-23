import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:futter_bottom_navigation/data/app_data.dart';
import 'package:futter_bottom_navigation/routes/router.gr.dart';
import 'package:futter_bottom_navigation/widgets.dart';

class PostsPage extends StatelessWidget {
  PostsPage({Key? key}) : super(key: key);
  final posts = Post.posts;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < posts.length; i++)
              PostTile(
                tileColor: posts[i].color,
                postTitle: posts[i].title,
                postContent: posts[i].content,
                onTileTap: () => context.router.push(
                  SinglePostRoute(
                    postId: posts[i].id,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}

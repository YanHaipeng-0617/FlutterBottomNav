import 'package:flutter/material.dart';

class Post {
  static final posts = [
    Post(1, 'Post1', '“当季节逐渐走向冷凉，那些花丛草间的美丽，都已被枯黄所逐渐替代”', Colors.amberAccent),
    Post(2, 'Post2', '“岁月轮转，时光静静的流逝，金秋的风，悄悄地拂过窗棂，轻轻地掀起清秋的面纱”',
        Colors.greenAccent),
    Post(3, 'Post3', '“上帝在为你关掉一扇窗子的同时会为你打开另一扇窗”', Colors.pinkAccent),
  ];
  final Color color;
  final String title;
  final String content;
  final int id;

  Post(
    this.id,
    this.title,
    this.content,
    this.color,
  );
}

class User {
  static final users = [
    User(Colors.amberAccent, 1),
    User(Colors.greenAccent, 2),
    User(Colors.pinkAccent, 3),
  ];
  final Color color;
  final int id;

  User(this.color, this.id);
}

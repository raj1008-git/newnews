import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart.';

class News {
  String writerName;
  ImageProvider newsImage;
  String storyTitle;
  String category;
  String profilePic;

  News(
      {required this.writerName,
      required this.newsImage,
      required this.storyTitle,
      required this.category,
      required this.profilePic});
}

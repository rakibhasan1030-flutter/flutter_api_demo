import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_api_demo/model/Post.dart';

class Repo {
  Future<List<Post>> getHttp() async {
    var response;
    try {
      response = await Dio().get('https://jsonplaceholder.typicode.com/posts');
    } catch (e) {
      print(e);
    }
    List<Post> post_list = [];
    for(int i = 0; i < response.data.length; i++){
      post_list.add(Post.fromJson(response.data[i]));
    }
    return post_list;
  }
}

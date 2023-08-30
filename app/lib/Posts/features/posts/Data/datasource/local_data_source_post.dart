// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:app/Posts/core/error/exceptions.dart';
import 'package:app/Posts/core/string/constants.dart';
import 'package:app/Posts/features/posts/Data/models/post_model.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalDataSourcePost extends Equatable {
  Future<List<PostModel>> getCachedPosts();
  Future<Unit> cachedPosts(List<PostModel> cachedPosts);
  @override
  List<Object?> get props => [];
}

class LocalDataSourcePostImpl extends LocalDataSourcePost {
  final SharedPreferences sharedPreferences;
  LocalDataSourcePostImpl({required this.sharedPreferences});

  @override
  Future<Unit> cachedPosts(List<PostModel> cachedPosts) {
    // List<Model> -> List<Map<String, dynamic>> (Encode)
    List cachedPostsToJson = cachedPosts
        .map<Map<String, dynamic>>((postModel) => postModel.toJson())
        .toList();
     sharedPreferences.setString(cachedPostsKey, json.encode(cachedPostsToJson));
    return Future.value(unit);
  }

  @override
  Future<List<PostModel>> getCachedPosts() {
    // List<Map<String, dynamic>> -> List<Model> (decode)
    var cachedPosts = sharedPreferences.getString(cachedPostsKey);
    if (cachedPosts != null) {
      List cachedPostsDecode = jsonDecode(cachedPosts);
      var cachedPostsFormJson = cachedPostsDecode
          .map<PostModel>((cachedPost) => PostModel.fromJson(cachedPost))
          .toList();
      return Future.value(cachedPostsFormJson);
    } else {
      throw EmptyCacheException();
    }
  }
}

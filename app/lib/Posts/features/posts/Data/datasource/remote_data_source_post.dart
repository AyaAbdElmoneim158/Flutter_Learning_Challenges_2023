// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:app/Posts/core/error/exceptions.dart';
import 'package:app/Posts/core/string/constants.dart';
import 'package:app/Posts/features/posts/Data/models/post_model.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

abstract class RemoteDataSourcePost extends Equatable {
  Future<List<PostModel>> getPosts();
  Future<Unit> addPost(PostModel post);
  Future<Unit> updatePost(PostModel post);
  Future<Unit> deletePost(int postId);

  @override
  List<Object?> get props => [];
}

class RemoteDataSourcePostImpl extends RemoteDataSourcePost {
  final http.Client client;
  RemoteDataSourcePostImpl({required this.client});

  @override
  Future<List<PostModel>> getPosts() async {
    final response = await client.get(
      Uri.parse("$baseUrl/posts/"),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      var decodedPosts = jsonDecode(response.body);
      var postsModels = decodedPosts
          .map<PostModel>((postModel) => PostModel.fromJson(postModel))
          .toList();
      return postsModels;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<Unit> addPost(PostModel post) async {
    final body = {
      "title": post.title,
      "body": post.body,
    };
    final response = await client.post(
      Uri.parse("$baseUrl/posts/"),
      body: body,
    );

    if (response.statusCode == 201) {
      return Future.value(unit);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<Unit> updatePost(PostModel post) async {
    final body = {
      "title": post.title,
      "body": post.body,
    };
    final response = await client.patch(
      Uri.parse("$baseUrl/posts/${post.id}"),
      body: body,
    );

    if (response.statusCode == 200) {
      return Future.value(unit);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<Unit> deletePost(int postId) async {
    final response = await client.delete(
      Uri.parse("$baseUrl/posts/$postId"),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      return Future.value(unit);
    } else {
      throw ServerException();
    }
  }
}

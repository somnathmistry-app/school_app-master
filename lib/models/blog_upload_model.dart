// To parse this JSON data, do
//
//     final blogUploadModel = blogUploadModelFromJson(jsonString);

import 'dart:convert';

BlogUploadModel blogUploadModelFromJson(String str) => BlogUploadModel.fromJson(json.decode(str));

String blogUploadModelToJson(BlogUploadModel data) => json.encode(data.toJson());

class BlogUploadModel {
  BlogUploadModel({
    this.res,
  });

  String? res;

  factory BlogUploadModel.fromJson(Map<String, dynamic> json) => BlogUploadModel(
    res: json["res"] == null ? null : json["res"],
  );

  Map<String, dynamic> toJson() => {
    "res": res == null ? null : res,
  };
}

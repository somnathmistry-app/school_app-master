// To parse this JSON data, do
//
//     final homeDataModel = homeDataModelFromJson(jsonString);

import 'dart:convert';

HomeDataModel homeDataModelFromJson(String str) => HomeDataModel.fromJson(json.decode(str));

String homeDataModelToJson(HomeDataModel data) => json.encode(data.toJson());

class HomeDataModel {
  HomeDataModel({
    this.res,
    this.data,
  });

  String? res;
  Data? data;

  factory HomeDataModel.fromJson(Map<String, dynamic> json) => HomeDataModel(
    res: json["res"] == null ? null : json["res"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "res": res == null ? null : res,
    "data": data == null ? null : data!.toJson(),
  };
}

class Data {
  Data({
    this.bannerData,
   this.blogData,
  });

  List<BannerData>? bannerData;
  List<BannerData>? blogData;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    bannerData: json["bannerData"] == null ? null : List<BannerData>.from(json["bannerData"].map((x) => BannerData.fromJson(x))),
    blogData: json["blogData"] == null ? null : List<BannerData>.from(json["blogData"].map((x) => BannerData.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "bannerData": bannerData == null ? null : List<dynamic>.from(bannerData!.map((x) => x.toJson())),
    "blogData": blogData == null ? null : List<dynamic>.from(blogData!.map((x) => x.toJson())),
  };
}

class BannerData {
  BannerData({
    this.id,
    this.title,
    this.content,
    this.headline,
    this.timestamp,
    this.type,
  });

  int? id;
  String? title;
  String? content;
  String? headline;
  DateTime? timestamp;
  String? type;

  factory BannerData.fromJson(Map<String, dynamic> json) => BannerData(
    id: json["id"] == null ? null : json["id"],
    title: json["title"] == null ? null : json["title"],
    content: json["content"] == null ? null : json["content"],
    headline: json["headline"] == null ? null : json["headline"],
    timestamp: json["timestamp"] == null ? null : DateTime.parse(json["timestamp"]),
    type: json["type"] == null ? null : json["type"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "title": title == null ? null : title,
    "content": content == null ? null : content,
    "headline": headline == null ? null : headline,
    "timestamp": timestamp == null ? null : timestamp!.toIso8601String(),
    "type": type == null ? null : type,
  };
}

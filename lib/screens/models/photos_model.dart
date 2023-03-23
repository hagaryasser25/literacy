import 'package:flutter/cupertino.dart';

class Photos {
  Photos({
    String? id,
    String? Tooltitle,
    String? date,
    String? description,
    String? image,
  }) {
    _id = id;
    _Tooltitle = Tooltitle;
    _date = date;
    _description = description;
    _image = image;
  }

  Photos.fromJson(dynamic json) {
    _id = json['Id'];
    _Tooltitle = json['Tooltitle'];
    _date = json['date'];
    _description = json['description'];
    _image = json['image'];
  }

  String? _id;
  String? _Tooltitle;
  String? _date;
  String? _description;
  String? _image;

  String? get id => _id;
  String? get Tooltitle => _Tooltitle;
  String? get date => _date;
  String? get description => _description;
  String? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Id'] = _id;
    map['Tooltitle'] = _Tooltitle;
    map['date'] = _date;
    map['description'] = _description;
    map['image'] = _image;

    return map;
  }
}

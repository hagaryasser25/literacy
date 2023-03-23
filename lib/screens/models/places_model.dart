import 'package:flutter/cupertino.dart';

class Places {
  Places({
    String? id,
    String? city,
    String? placeaddress,
    String? placename,
    String? phone,
  }) {
    _id = id;
    _city = city;
    _placeaddress = placeaddress;
    _placename = placename;
    _phone = phone;
  }

  Places.fromJson(dynamic json) {
    _id = json['Id'];
    _city = json['city'];
    _placeaddress = json['placeadress'];
    _placename = json['placename'];
    _phone = json['phone'];
  }

  String? _id;
  String? _city;
  String? _placeaddress;
  String? _placename;
  String? _phone;

  String? get id => _id;
  String? get city => _city;
  String? get placeaddress => _placeaddress;
  String? get placename => _placename;
  String? get phone => _phone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Id'] = _id;
    map['city'] = _city;
    map['placeadress'] = _placeaddress;
    map['placename'] = _placename;
    map['phone'] = _phone;

    return map;
  }
}

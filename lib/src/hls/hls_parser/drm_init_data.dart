import 'package:collection/collection.dart';
// import 'package:flutter/cupertino.dart'; // 如果没有用到其他 Flutter 组件，此行可以移除

import 'scheme_data.dart';

class DrmInitData {
  DrmInitData({this.schemeType, this.schemeData = const []});

  final List<SchemeData> schemeData;
  final String? schemeType;

  @override
  bool operator ==(dynamic other) {
    if (other is DrmInitData) {
      return schemeType == other.schemeType &&
          const ListEquality<SchemeData>().equals(other.schemeData, schemeData);
    }
    return false;
  }

  @override
  // 使用 Dart 内置的 Object.hash() 方法进行替换
  int get hashCode => Object.hash(schemeType, schemeData);
}

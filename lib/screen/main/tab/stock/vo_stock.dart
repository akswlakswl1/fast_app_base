import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_popular_stock.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Stock extends PopularStock {
  final String stockImagePath;

  Stock(
      {required super.stockName,
      required super.yesterdayClosePrice,
      required super.currentPrice,
      required this.stockImagePath});


}

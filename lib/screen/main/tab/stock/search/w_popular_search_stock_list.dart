import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/popular_stock_dummy.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/w_popular_stock_item.dart';
import 'package:flutter/material.dart';

class PopularSearchStockList extends StatefulWidget {
  const PopularSearchStockList({super.key});

  @override
  State<PopularSearchStockList> createState() => _PopularSearchStockListState();
}

class _PopularSearchStockListState extends State<PopularSearchStockList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            '인기 검색'.text.bold.make(),
            emptyExpanded,
            '오늘 ${DateTime
                .now()
                .formattedTime} 기준'.text.size(20).make(),
          ],
        ),
        heigth20,
        ...popularStockList.mapIndexed((currentValue, index) =>
            PopularStockItem(stock: currentValue, number: index + 1)).toList(),
      ],
    ).pSymmetric(h:20);
  }
}

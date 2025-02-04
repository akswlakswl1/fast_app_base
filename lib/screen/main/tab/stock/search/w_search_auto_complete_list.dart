import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/search_stock_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchAutoCompleteList extends StatelessWidget {
  late final searchData = Get.find<SearchStockData>();

  SearchAutoCompleteList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) =>
            searchData.autoCompleteList[index].stockName.text.make(),
    itemCount: searchData.autoCompleteList.count());
  }
}

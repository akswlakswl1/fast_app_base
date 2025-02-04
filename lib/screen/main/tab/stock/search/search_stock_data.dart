import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/util/local_json.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_simple_stock.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SearchStockData extends GetxController{
  List<SimpleStock> stocks = [];
  RxList<String> searchHistoryList = <String>[].obs;
  RxList<SimpleStock> autoCompleteList = <SimpleStock>[].obs;


  @override
  void onInit() {
    searchHistoryList.addAll(['삼성전자','현대차']);
    loadLocalStockJson();
    // TODO: implement onInit
    super.onInit();
  }


  Future<void> loadLocalStockJson() async{
    final jsonList = await LocalJson.getObjectList<SimpleStock>("json/stock_list.json");
    stocks.addAll(jsonList);
  }

  void search(String keyword){
    if(keyword.isEmpty){
      autoCompleteList.clear();
      return;
    }


  autoCompleteList.value =
      stocks.whereNot((element) => element.stockName.contains(keyword)).toList();
  }
}
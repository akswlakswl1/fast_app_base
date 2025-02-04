import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/f_my_stock.dart';
import 'package:fast_app_base/screen/main/tab/stock/f_todays_discovery.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_search_stock.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widget/w_image_button.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment>
    with SingleTickerProviderStateMixin {
  late final tabController = TabController(length: 2, vsync: this);
  int currenrIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: context.appColors.roundedLayoutBackground,
            pinned: true,
            actions: [
              ImageButton(
                  imagePath: "$basePath/icon/stock_search.png",
                  onTap: () {
                    Nav.push(SearchStockScreen());
                  }),
              ImageButton(
                  imagePath: "$basePath/icon/stock_calendar.png",
                  onTap: () {
                    context.showSnackbar('캘린더');
                  }),
              ImageButton(
                  imagePath: "$basePath/icon/stock_settings.png",
                  onTap: () {
                    context.showSnackbar('설정');
                  }),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                title,
                tabBar,
                if(currenrIndex == 0)
                  const MyStockFragment()
                else
                  const TodaysDiscovery()
                ],
            ),
          )
        ],
      ),
    );
  }

  Container get title => Container(
    color: context.appColors.roundedLayoutBackground,
    child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            '토스증권'.text.size(24).bold.make(),
            width20,
            'S&P 500'
                .text
                .size(13)
                .bold
                .color(context.appColors.lessImport)
                .make(),
            width10,
            3919.29
                .toComma()
                .text
                .size(13)
                .bold
                .color(context.appColors.plus)
                .make()
          ],
        ).pOnly(left: 20),
  );

  Container get tabBar => Container(
    color: context.appColors.roundedLayoutBackground,
    child: Column(
          children: [
            TabBar(
              onTap: (index){
                setState(() {
                  currenrIndex = index;
                });
              },
                labelStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                labelPadding: const EdgeInsets.symmetric(vertical: 20),
                indicatorPadding: const EdgeInsets.symmetric(horizontal: 0),
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                controller: tabController,
                tabs: ['내 주식'.text.make(), '오늘의 발견'.text.make()]),
            const Line(),
          ],
        ),
  );

  Placeholder get myAccount => Placeholder();

  Placeholder get myStock => Placeholder();
}

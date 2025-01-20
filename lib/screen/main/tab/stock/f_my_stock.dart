import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/w_long_button.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [getMyAccount(context), heigth20, getMyStock(context)],
    );
  }

  Container getMyAccount(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: context.appColors.roundedLayoutBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heigth20,
            '계좌'.text.make(),
            Row(
              children: [
                '443원'.text.size(24).bold.make(),
                Arrow(),
                emptyExpanded,
                RoundedContainer(
                    backgroundColor: context.appColors.buttonBackground,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    radius: 8,
                    child: '채우기'.text.size(12).make()),
              ],
            ),
            heigth30,
            Line(color: context.appColors.divider),
            heigth30,
            LongButton(title: '주문내역'),
            LongButton(title: '판매수익')
          ],
        ),
      );

  Container getMyStock(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        color: context.appColors.roundedLayoutBackground,
        child: Column(
          children: [
            heigth30,
            Tap(
              onTap: (){
                context.showSnackbar('관심주식');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  '관심주식'.text.bold.make(),
                  '편집하기'.text.color(context.appColors.lessImport).make(),
                ],
              ),
            ),
            heigth20,
            Tap(
              onTap: (){
                context.showSnackbar('기본');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    '기본'.text.bold.make(),
                    Arrow(
                      direction: AxisDirection.up,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
}

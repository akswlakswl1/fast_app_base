import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationItemWidget extends StatefulWidget {
  final TtosNotification notification;
  final VoidCallback onTap;
  const NotificationItemWidget({super.key, required this.notification,required this.onTap});

  @override
  State<NotificationItemWidget> createState() => _NotificationItemWidgetState();
}

class _NotificationItemWidgetState extends State<NotificationItemWidget> {
  static const double leftPadding = 10.0;
  static const double iconWidth = 25.0;

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        color: widget.notification.isRead
            ? context.backgroundColor
            : context.appColors.unreadColor,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Width(leftPadding),
                Image.asset(
                  widget.notification.type.iconPath,
                  width: iconWidth,
                ),
                widget.notification.type.name.text
                    .size(12)
                    .color(context.appColors.lessImport)
                    .make(),
                emptyExpanded,
                timeago
                    .format(widget.notification.time, locale: context.locale.languageCode)
                    .text
                    .make(),
                width10
              ],
            ),
            widget.notification.description.text
                .make()
                .pOnly(left: leftPadding + iconWidth)
          ],
        ),
      ),
    );
  }
}

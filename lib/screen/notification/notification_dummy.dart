import 'package:fast_app_base/common/dart/extension/num_duration_extension.dart';
import 'package:fast_app_base/screen/notification/vo/notification_type.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';

final notificationDummies = <TtosNotification>[
  TtosNotification(
      NotificationType.tossPay,
      '이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요',
      DateTime.now().subtract(27.minutes)),
  TtosNotification(
      NotificationType.stock,
      '인적분할에 대해 알려드릴게요',
      DateTime.now().subtract(27.minutes)),
  TtosNotification(
      NotificationType.walk,
      '1000걸음 이상 걸었다면 포인트 받으세요',
      DateTime.now().subtract(27.minutes)),
  TtosNotification(
      NotificationType.moneyTip,
      '유럽 식품 물가가 치솟고 있어요.\n남반석님, 유럽여행에 관심이 있다면 확인해보세요.',
      DateTime.now().subtract(8.hours)),
  TtosNotification(
      NotificationType.walk,
      '오늘 1000걸음을 넘겼어요. 포인트를 받아보세요.',
      DateTime.now().subtract(11.hours)),
  TtosNotification(
      NotificationType.luck,
      '6월5일, 행운 복권이 도착했어요',
      DateTime.now().subtract(12.hours),
      isRead: true),
  TtosNotification(
      NotificationType.people,
      '띵동! 월요일 공동구매 보러가기',
      DateTime.now().subtract(27.days)),

];

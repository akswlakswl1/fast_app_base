import 'package:fast_app_base/screen/main/tab/home/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 = BankAccount(
    bankShinhan, 3000000, accountTypeName: "신한 주거래 우대통장(저축예금)");
final bankAccountShinhan2 = BankAccount(
    bankShinhan, 30000000, accountTypeName: "저축예금");
final bankAccountShinhan3 = BankAccount(
    bankShinhan, 300000000, accountTypeName: "저축예금");
final bankAccountToss = BankAccount(bankTtoss, 500000000);
final bankAccountKakao = BankAccount(
    bankKakao, 700000000, accountTypeName: "입출금통장");

main(){
  //print('test');
  //print(bankAccounts[0].accountTypeName);

  // for(final item in bankAccounts){
  //   print(item.bank.name);
  // }


  // final shinhanBank = bankMap["shinhan1"];
  // print(shinhanBank == bankAccountShinhan1);
  // for(final entry in bankMap.entries){
  //   print(entry.key);
  // }

  // bankAccounts.toSet();
  // bankSet.toList();

}

//순서를 순회하여야 하는 경우에는 list를 사용하고
//성능을 높이기 위해서는 map,set을 사용

//List 순서를 보장 0(n)
final bankAccounts = [
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,
  bankAccountToss,
  bankAccountKakao,
];

//Map 0(1)
final bankMap = {
  "shinhan1" : bankAccountShinhan1,
  "shinhan2" : bankAccountShinhan2,
  "shinhan3" : bankAccountShinhan3,
};


//Set 리스트와 맵 중간, 데이터가 존재하는지 확인하는 용도
//리스트가 커질수록 가져오는데 오래걸림
final bankSet = {
  bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,
};

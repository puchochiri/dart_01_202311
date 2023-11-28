



void helloWorld() {
  print('hello world');
}
void nameChange() {
  var name = '빛날1';
  print(name);

  // 변숫값 변경 가능
  name = '빛날2';
  print(name);

}

void dynamicName() {
  dynamic name = '빛날다이나믹';
  print(name);
  name = 1;
  print(name);
}

void stringFunction() {
  final String name2 = '블랙핑크';
  //name2 = 'BTS';

  const String name3 ='BTS';
  print(name3);
}

void dateTimeFunction() {
  final DateTime now = DateTime.now();

  print(now);

}

void typeFunction() {
  //String - 문자열
  String name = '빛날';

}

void typeBool() {
  String name = "빛날";
  int isInt = 10;
  double isDouble = 2.5;
  bool isTrue = true;

  print(name);
  print(isInt);
  print(isDouble);
  print(isTrue);
}

void typeList() {
  List<String> blackPinkList = ['리사','지수','제니','로제'];

  print(blackPinkList);
  print(blackPinkList[1]);
  print(blackPinkList[2]);
  print(blackPinkList.length);
  print(blackPinkList);
  //행이동 알트 시프트 화살표

  blackPinkList.add('빛날');
  print(blackPinkList);

  final newList = blackPinkList.where(
      (name) => name == '리사' || name == '지수', // '리사' 또는 '지수'만 유지
  );
  print(newList);
  print(newList.toList()); // Iterable을 List로 다시 변환할 때 .toList() 사용

  blackPinkList = ['리사','지수','제니','로제'];

  final newBlackPink = blackPinkList.map(
      (name) => '블랙핑크 $name', // 리스트의 모든 값 앞에 '블랙핑크' 추가
  );
  print(newBlackPink);

  print(newBlackPink.toList());

  //리스트를 순회하며 갓들을 더함
  final allMembers = blackPinkList.reduce((value, element) => value + ',' + element);

  print(allMembers);

  final allMembersFold = blackPinkList.fold<int>(0, (value, element) => value + element.length);

  print(allMembersFold);

}


void main() {
  typeList();
}
// dart lib/main.dart
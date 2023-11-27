



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

void main() {
  dateTimeFunction();
}
// dart lib/main.dart
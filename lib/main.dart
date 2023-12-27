



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

  Map<String, String> dictionary = {
    'Harry Potter' : '해리 포터',
    'Ron Weasley' : '론 위즐리',
    'Hermione Granger' : '헤르미온느 그레인저',
  };

  print(dictionary.keys);
  print(dictionary.values);

  double number = 2;

  print(number + 2); // 4 출력
  print(number - 2); // 0 출력
  print(number * 2); // 4 출력
  print(number / 2); // 1 출력. 나눈 몫
  print(number % 3); // 2 출력. 나눈 나머지

  //단항 연산도 됩니다.
  print(number++); //3
  print(number--); //2

  print(number += 2); //4
  print(number -= 2); //2
  print(number *= 2); //4
  print(number /= 2); //2

  // 타입 뒤에 ?를 명시해서 null값을 가질 수 있습니다.
  double? number1 = null;
  print(number1);

  // 타입 뒤에 ?를 명시하지 않아 에러가 납니다.
  //double number2 = null;





}

enum Status {
  approved,
  pending,
  rejected,
}

void StatusEnum() {
  Status status = Status.approved;
  print("enum:" + status.toString());

}



class Idol {
  String _name;
  Idol(this._name);
}
// dart lib/main.dart
class Idol1 {
  String _name = '블랙핑크게터세터';

  String get name {
    return this._name;
  }

  set name(String name) {
    this._name = name;
  }
}

class Idol2 {
  final String name;
  final int membersCount;

  Idol2(this.name, this.membersCount);

  void sayName() {
    print('저는 ${this.name}입니다.');
  }

  void sayMembersCount() {
    print('${this.name} 멤버는 ${this.membersCount}명입니다.');
  }
}

class BoyGroup extends Idol2 {
  BoyGroup(
      String name,
      int membersCount,
      ) : super ( // super는 부모 클래스를 지칭합니다.
    name,
    membersCount,
  );

  // 상속받지 않은 기능
  void sayMale() {
    print('저는 남자 아이돌 입니다.');
  }

}

class GirlGroup extends Idol2 {
  GirlGroup (
      super.name,
      super.membersCount,
  );

  @override
  void sayName() {
    print('저는 여자 아이돌 ${this.name}입니다.');
  }


}

class GirlGroup2 implements Idol2 {
  final String name;
  final int membersCount;

  GirlGroup2(
      this.name,
      this.membersCount,
  );

  void sayName() {
    print('저는 여자 아이돌 ${this.name} 입니다.');
  }

  void sayMembersCount() {
    print('${this.name} 멤버는 ${this.membersCount} 명입니다.' );
  }

}

mixin IdolSingMixin on Idol2 {
  void sing() {
    print('${this.name}이 노래를 부릅니다.');
  }
}

class BoyGroup2 extends Idol2 with IdolSingMixin {
  BoyGroup2(
      super.name,
      super.membersCount
  );

  void sayMale() {
    print('저는 남자 아이돌입니다.');
  }
}

abstract class Idol3 {
  final String name;
  final int membersCount;

  Idol3(this.name, this.membersCount); // 생성자 선언

  void sayName();
  void sayMembersCount();
}

class GirlGroup3 implements Idol3 {
  final String name;
  final int membersCount;

  GirlGroup3(
      this.name,
      this.membersCount
      );
  void sayName() {
    print('저는 여자 아이돌 ${this.name}입니다. ');
  }

  void sayMembersCount() {
    print('${this.name} 멤버는 ${this.membersCount}명 입니다.');
  }
}



void main() {
  typeList();
  StatusEnum();
  Idol blackPick = Idol('블랙핑크');
  print(blackPick._name);
  Idol1 blackPink1 = Idol1();
  blackPink1.name = '에이핑크';
  print(blackPink1.name);

  BoyGroup bts = BoyGroup('BTS',7);
  bts.sayName();
  bts.sayMembersCount();
  bts.sayMale();

  GirlGroup blackPink2 = GirlGroup('블랙핑크', 4);
  blackPink2.sayName(); // 자식 클래스의 오버라이드된 메서드 이용
  blackPink2.sayMembersCount();

  GirlGroup2 blackPink3 = GirlGroup2('블랙핑크5', 5);
  blackPink3.sayName();
  blackPink3.sayMembersCount();

  BoyGroup2 bts2 = BoyGroup2('BTS2',7);
  // 믹스인에 정의된 sing() 함수 사용 가능
  bts2.sing();
  bts2.sayMembersCount();
  bts2.sayName();

  GirlGroup3 blackPink4 = GirlGroup3('블랙핑크핑크3', 10);
  blackPink4.sayName();
  blackPink4.sayMembersCount();

}


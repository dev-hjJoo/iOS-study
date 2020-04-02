/* 타입 캐스팅 */
//스위프트의 타입 캐스팅은 "인스턴스의 타입을 확인"하는 용도
//또는 클래스의 인스턴스를
//"부모(조상) 혹은 자식 클래스의 타입으로 사용"할 수 있는 지 확인하는 용도
//is 혹은 as 키워드 사용

import Swift

// 아래 주석 코드는 기존에 우리가 알고 있던 타입 캐스팅
// 스위프트에서 이는 타입 캐스팅이 아니야!
// someInt의 값을 가지고 더블 타입의 인스턴스를 하나 더 생성했을 뿐!
/*
 let someInt: Int = 100
 let someDouble: Double = Double(someInt)
 */


// 타입 캐스팅을 위한 클래스 정의
// 딕셔너리 등을 사용할 때 Any, AnyObject 많이 사용 -> 이 때도 타입캐스팅 많이 활용.
class Person {
    var name: String = ""
    func breath() {
        print("숨을 쉽니다 후하후하")
    }
}

class Student: Person {
    var school: String = ""
    func goToSchool() {
        print("등교룰 합니다 헛둘")
    }
}

class UniversityStudent: Student {
    var major: String = ""
    func goToMT() {
        print("멤버쉽 트레이닝을 갑니다 룰루~!")
    }
}


var yagom: Person = Person()
var hana: Student = Student()
var hyoz: UniversityStudent = UniversityStudent()


// MARK: - 타입 확인
// is를 사용하여 타입 확인
var result: Bool

result = yagom is Person                // true
result = yagom is Student               // false
result = yagom is UniversityStudent     // false

result = hana is Person                // true
result = hana is Student               // true
result = hana is UniversityStudent     // false

result = hyoz is Person                // true
result = hyoz is Student               // true
result = hyoz is UniversityStudent     // true

// if 구문에서 조건으로 사용 가능
if yagom is UniversityStudent {
    print("yagom은 대학생입니다")
} else if yagom is Student {
    print("yagom은 학생입니다")
} else {
    print("yagom은 사람입니다")
}
// yagom은 사람입니다

// 마찬가지로 switch구문에서도 사용 가능
switch hyoz {
case is Person:
    print("hyoz는 사람입니다")
case is Student:
    print("hyoz는 학생입니다")
case is UniversityStudent:
    print("hyoz는 대학생입니다")
default:
    print("hyoz는 사람도, 학생도, 대학생도 아닙니다")
}
// hyoz는 사람입니다.

switch hyoz {
case is UniversityStudent:
    print("hyoz는 대학생입니다")
case is Student:
    print("hyoz는 학생입니다")
case is Person:
    print("hyoz는 사람입니다")
default:
    print("hyoz는 사람도, 학생도, 대학생도 아닙니다")
}
// hyoz는 대학생입니다.


// MARK: - 업 캐스팅 (많이 사용 안 함)
//as를 사용하여 부모 클래스의 인스턴스로 사용할 수 있도록
//컴파일러에게 타입 정보를 전환해줍니다
//Any 혹은 AnyObject로도 타입 정보를 변환할 수 있습니다
//암시적으로 처리되므로 생략해도 무방합니다

var mike: Person = UniversityStudent() as Person
var jenny: Student = Student()
// 아래 코드: 컴파일 오류
// var jina: UniversityStudent = Person() as UniversityStudent
var jina: Any = Person() // as Any 생략 가능

// MARK: - 다운 캐스팅 (중요!)
// as?(조건부 다운 캐스팅) 또는 as!(강제 다운 캐스팅)를 사용
// 자식 클래스의 인스턴스로 사용할 수 있도록
// 컴파일러에게 인스턴스의 타입 전보를 전환해줍니다

// MARK: 조건부 다운 캐스팅
// as?
var optionalCasted: Student?

// mike는 실질적으로 할당된 인스턴스가 "대학생", 사람 타입이어도 대학생으로 캐스팅이 될 수 있음!
optionalCasted = mike as? UniversityStudent
// 나머지는 학생이거나 사람이었기 떄문에 대학생으로 캐스팅 될 수 없음
optionalCasted = jenny as? UniversityStudent
optionalCasted = jina as? UniversityStudent
optionalCasted = jina as? Student

// MARK: 강제 다운 캐스팅
// as!
// 강제로 어떤 타입으로 캐스팅 해 버려!
// 위험 요소 존재, 하지만 반환되는 타입이 일반타입이라 사용하기 편함.
var forcedCasted: Student

// mike는 대학생이기 떄문에 크게 문제될 것 없음
optionalCasted = mike as! UniversityStudent
// 아래 코드들은 대학생이 아니기 때문에 런타임 오류!
//optionalCasted = jenny as! UniversityStudent
//optionalCasted = jina as! UniversityStudent
//optionalCasted = jina as! Student


// 활용
// 주로 함수로 받아서 사용
func doSomethingWithSwitch(someone: Person) {
    switch someone {
    case is UniversityStudent:      // 확인만 할 뿐, 아래에서 캐스팅을 해서 사용해야 하는 경우 존재. (아래 코드 참고)
        (someone as! UniversityStudent).goToMT()
    case is Student:
        (someone as! Student).goToSchool()
    case is Person:
        (someone as! Person).breath()
    }
}

// if let 구문을 통해 확인과 캐스팅을 동시에!
func dosomething(someone: Person) {
    if let universityStudent = someone as? UniversityStudent {
        universityStudent.goToMT()
    } else if let student = someone as? Student {
        student.goToSchool()
    } else if let person = someone as? Person {
        person.breath()
    }
}

dosomething(someone: mike as Person)
// 멤버쉽 트레이닝을 갑니다 룰루~!

dosomething(someone: mike)
// 멤버쉽 트레이닝을 갑니다 룰루~!

dosomething(someone: jenny)
// 등교룰 합니다 헛둘

dosomething(someone: yagom)
// 숨을 쉽니다 후하후하

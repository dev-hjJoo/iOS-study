/* assert 함수와 guard 구문 */
 
// 애플리케이션이 동작 도중에 생성하는 다양한 결과값(ex: 연산 결과값)을
// 동적으로 확인하고 안전하게 처리할 수 있도록
// 확인하고 빠르게 처리할 수 있음

import Swift

// MARK: - Assertion
// assert(_:_:file:line:) 함수를 사용
// assert 함수는 디버깅 모드에서만 동작
// 배포하는 애플리케이션에서는 제외(동작ㄴ)
// 주로 디버깅 중 내가 예상했던 조건의 검증을 위하여 사용

var someInt: Int = 0

// someInt가 0이 맞으면 지나가게 되고, 아니면 오른쪽 문자열을 출력하고 동작 중지
assert(someInt == 0, "someInt != 0")

someInt = 1
// 즉, 1로 바꾸면 아래 코드에서 중지!
// 메세지는 써줘도 되고 안 써줘도 됨
//assert(someInt == 0)                    // 동작 중지, 검증 실패
// Assertion failed: file 2-assert와guard.playground, line 20

// assert(someInt == 0, "someInt != 0")    // 동작 중지, 검증 실패
// Assertion failed: someInt != 0: file 2-assert와guard.playground, line 23


// 전달인자를 검증할 때에도 assert 함수를 많이 사용
func functionWithAssert(age: Int?) {
    
    assert(age != nil, "age == nil")
    
    assert((age! >= 0) && (age! <= 130), "나이값 입력이 잘못되었습니다.")
    print("당신의 나이는 \(age!)세입니다.")
}

functionWithAssert(age: 50)         // 당신의 나이는 50세입니다.
//functionWithAssert(age: -1)         // 동작 중지, 검증 실패
// Assertion failed: 나이값 입력이 잘못되었습니다.: file 2-assert와guard.playground, line 35
//functionWithAssert(age: nil)        // 동작 중지, 검증 실패
// Assertion failed: age == nil: file 2-assert와guard.playground, line 33


// MARK: - Early Exit
// guard를 사용하여 잘못된 값의 전달 시
// 특정 실행 구문을 빠르게 종료
// 디버깅 모드 뿐만 아니라 어떤 조건에서도 동작

// guard에는 else가 꼭 와서 붙음!
// guard의 else 블럭 내부에는
// 특정 코드 블럭을 종료하는 지시어(return, break 등)가 꼭 필요

// 타입 캐스팅, 옵셔널과도 자주 사용됨
// 그 외 단순 조건 판단 후 빠르게 종료할 때도 용이

func functionWithGuard(age: Int?) {
    guard let unwrappedAge = age,
        unwrappedAge < 130,
        unwrappedAge >= 0 else {
        print("나이값 입력이 잘못되었습니다")
        return
    }
    
    // 빠른 종료를 위한 구문으로 return이나 break 등의 지시어가 없으면 오류!
    guard unwrappedAge < 100 else {
        return
    }
    // 아래와 같은 방식으로 사용했던 코드를 위와 같이 축소시켜 사용할 수 있는 것!
    /*
    if unwrappedAge < 100 {
        // 조건이 참이면 실행할 구문
    } else {
        return
    }
     */
    
    print("당신의 나이는 \(unwrappedAge)세입니다.")
}


// 아래와 같이 반복문에서도 사용 가능
var count = 1

while true {
    guard count < 3 else {
        break
    }
    print(count)
    count += 1
}
// 1
// 2

// 딕셔너리에서 나온 값 -> 옵셔널

func someFunction(info: [String: Any]) {
    
    // 값을 추출하여 as를 통해 캐스팅을 해 본다. 완벽하게 동작하면 name에 바인딩되어 함수 수행. 아니면 빠르게 종료
    guard let name = info["name"] as? String else {
        return
    }
    // age가 Int타입이고 나이는 0이상이어야 함. 아니면 종료.
    guard let age = info["age"] as? Int, age >= 0 else {
        return
    }
    
    print("\(name): \(age)")
}

someFunction(info: ["name": "jenny", "age": "10"])    
someFunction(info: ["name": "mike"])
someFunction(info: ["name": "hyoz", "age": 24])         // hyoz: 24

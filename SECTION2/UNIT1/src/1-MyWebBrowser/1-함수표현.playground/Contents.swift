/* 1-함수표현 */

// MARK: - 함수의 선언

// MARK: 함수선언의 기본 형태
/*
 func 함수이름 (매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
    함수 구현부
    return 반환값
 }
 */
func sum(a: Int, b: Int) -> Int {
    return a + b
}

// MARK: 반환값이 없는 함수
// 만약 반환 값이 없다면? 반환타입 = Void (혹은 생략 가능)
func printMyName(name: String) -> Void {
    print("나의 이름은 \(name)")
}
func printYourName(name: String) {
    print("너의 이름은 \(name)")
}

// MARK: 매개변수가 없는 함수
// 매개변수가 없다면 괄호 안을 비우기! (단, 괄호는 생략 불!가능ㅁ)
func maximumIntegerValue() -> Int {
    return Int.max
}

// MARK: 매개변수와 반환값이 없는 함수
func hello() { print("Hello") }
func bye() -> Void { print("Bye") }


// MARK: - 함수의 호출
// 함수의 이름을 쓴 후, 괄호 안에 매개변수의 이름과 값을 입력해주면 OK!
printMyName(name: "hyoz")                       // 나의 이름은 hyoz
printYourName(name: "gomYa")                    // 너의 이름은 gomYa

print("Int의 최대값: \(maximumIntegerValue())")   // Int의 최대값: 9223372036854775807

hello()                                         // Hello
bye()                                           // Bye


// MARK: - 매개변수 기본값
// 기본값: 매개변수에 값이 들어오지 않아도 자동으로 매개변수를 갖게 되는 것
// 기본값을 갖는 매개변수는 매개변수 목록 중 뒤쪽에 위치하는 것이 좋다
/*
 func 함수이름 (매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 매개변수 기본값 ...) -> 반환타입 {
 */
func greeting(friend: String, me: String = "hyoz") {
    print("Hello \(friend)! I'm \(me)")
}
// 기본값이 생략되어도 실행하는 데에 문제 없음. 기본값 활용.
greeting(friend: "gomYa")                   // Hello gomYa! I'm hyoz
greeting(friend: "john", me: "real-hyo")    // Hello john! I'm real-hyo

// MARK: - 전달인자 레이블

// 전달인자 레이블은 함수를 호출할 때
// 매개변수의 역할을 좀 더 명확히 하거나
// 함수 사용자 입장에서 표현하고자 할 때 사용합니다
/*
 func 함수이름 (전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
    함수 구현부
    return
 */

// 함수 내부에서 전달 인자를 사용할 때에는 매개변수 이름을 사용
func greeting (to friend: String, frome me: String) {
    print("Hello \(friend)! I'm \(me)")
}

// 함수 호출 할 때에는 전달인자 레이블을 사용해야 함
greeting(to: "yagom", frome: "hyoz")        // Hello yagom! I'm hyoz


// MARK: - 가변 매개변수

// 전달 받을 값의 개수를 알기 어려울 때 사용할 수 있음
// -> 0개든 여러개든 상관ㄴㄴ, 단 0개일 때에는 가변인자 레이블을 지워주면 OK
// 가변 매개변수는 함수당 하나만 가질 수 있음
// 가변 매개변수를 활용하려면 매개변수 타입 뒤에 마침표 세 개를 찍으면 됨 (뛰어쓰기 하면 안 돼요~)
// 맨 마지막에 위치하는 것이 좋음
/*
 func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입...) -> 반환타입 {
    함수 구현부
    return
 */

func sayHelloToFriends(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)"
}
print(sayHelloToFriends(me: "hyoz", friends: "yagom", "nyangpine", "dionkim", "dongupak"))
// Hello ["yagom", "nyangpine", "dionkim", "dongupak"]! I'm hyoz
print(sayHelloToFriends(me: "hyoz"))
// Hello []! I'm hyoz


/*
 위에 설명한 함수의 다양한 모양은 모두 섞어서 사용 가능. 단, 중요한 특징들은 기억할 것!
 ex) 가변인자 레이블은 하나만 가질 수 있다!
 */

// MARK: - 데이터 타입으로서의 함수

// 스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어
// 스위프트의 함수는 일급객체이므로 변수, 상수 등에 저장이 가능
// 매개변수를 통해 전달 또한 가능

// MARK: 함수의 타입 표현
// 반환타입을 생략할 수 없음
// 아래 코드가 바로 함수의 타입이 됨!
// (매개변수1타입, 매개변수2타입 ...) -> 반환타입

var someFunction: (String, String) -> Void = greeting(to:frome:)
someFunction("yagom", "hyoz")

// 다른 함수도 할당 가능하지만, 타입이 다른 함수는 할당할 수 없음
// 아래 코드 같은 경우 friends가 가변 매개변수였음.
// 초기화 시 할당된 함수는 두 개의 String 매개변수를 받는 함수였기 때문에 할당 불가.
// someFunction = sayHelloToFriends(me: friends: )

// 아래와 같이 만들어서 할당해줄 수도 있음
func runAnother(function: (String, String) -> Void) {
    function("jenny", "mike")
}

runAnother(function: greeting(to:frome:))       // Hello jenny! I'm mike
runAnother(function: someFunction)              // Hello jenny! I'm mike

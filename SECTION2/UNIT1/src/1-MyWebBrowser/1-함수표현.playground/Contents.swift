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
// 매개변수가 없다면 괄호 안을 비우기! (단, 괄호는 생략 불!가능)
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


# 야곰의 iOS 프로그래밍
* 선행과목 : [야곰의 스위프트 기본 문법 강좌](https://www.inflearn.com/course/%EC%8A%A4%EC%9C%84%ED%94%84%ED%8A%B8-%EA%B8%B0%EB%B3%B8-%EB%AC%B8%EB%B2%95/)
<pre>선행과목을 이수했지만, iOS 프로그래밍 강좌를 들으며 어렵거나 어색하게 느끼는 부분들을 다시 공부할 것!
<b>SECTION2 디렉토리</b>에 별도 저장할 것. </pre>

## 1번-프로젝트: 웹 브라우저 만들기
### 학습 내용
#### Xcode를 이용하여 화면 구성
* 툴바, 툴바 버튼, 웹 브라우저, 액티비티 인디케이터
* 오브젝트 라이브러리 열기는 Command+Shif+L
#### 커넥션 인스펙터를 통한 버튼과 컨트롤러 연결
#### 화면 정렬 및 구성하기
#### 어트리뷰트 인스펙터를 통해 오브젝트 모양 및 색상 변경
<pre>
<b> 복습할 문법</b>
* 함수 표현, guard 구문, as 연산자, extension
</pre>
## 2번-프로젝트: 내 소개 애플리케이션
> 애플은 사용자 경험, 즉 UX를 중요시 함.
### 학습 내용
#### 인터페이스 빌더로 레이아웃 구성하기
* text field의 PlaceHolder 기능을 이용하여 어떤 내용을 입력할 지 보여주는 미리보기(?) 쓰기
* keyboard type: 상황에 따라 다른 키보드 보여줄 수 있음(ex: 이메일, 기본 영문, 폰패드 등)
#### iOS 프로그래밍의 기본: UIKit 프레임워크
* User Interface Kit의 약자
* Foundation 프레임 워크와 더불어 iOS의 큰 기능을 이루는 뼈대
* <b>개발자 문서를 스스로 보면서 프레임워크 익히기 (단축키: Command+Shift+0)</b>
#### Auto Layout   
<img src="https://github.com/dev-hjJoo/iOS-study/blob/master/SECTION1/UNIT2/img/2-myProfile-img3.png" width="60%" height="35%"></img> 
* 제약 사항 간의 충돌이 가능한 없게 만들기
* 충돌을 없앨 때에는 Size inspector 에 들어가서 진행
* 충돌이 너무 많이 일어난다? Constraints(제약) 모두 없애고 다시 설정해보자..
#### Human Interface Guidelines for iOS (H.I.G.)
* 사용자의 입장에서 경험해봤을 법한 것들이 많음
* 애플 플랫폼에 익숙해진 사용자는 이 경험과 다른 느낌의 경험을 느끼게 되면 불편함을 느낄 수 있음
  * -> 애플리케이션을 사용하지 않을 확률 존재
  * 그래서 중요! 사용자에게도 기획자에게도 중요한 문서
  * 디자이너를 위한 Resource도 제공
* 사용자와 상호작용을 하면서 어떤 요소를 사용해야 하는 지 등의 정보를 알 수 있음
* <b>모든 내용을 꼭 정독해보길 바람!!</b>
#### View Programming Guide
* 시뮬레이션이 실행 중인 상태에서 디버그 영역에 Debug View Hierarchy 누르면 화면의 상태를 알 수 있음
* 가장 밑바닥의 검은색 화면 = Window -> View -> 다양한 화면 구성
* 이에 대한 가이드라인 = View Programming Guide
<pre> <b>복습할 내용</b>
* Auto Layout 설정하기
* H.I.G. 문서 정독하기
* 야곰님 보충 자료 참고하기
</pre>
## 3번-프로젝트: Up-down Game
### 학습 내용
* <b>Command + Shift + o</b> 단축키를 이용하여 원하는 파일을 빠르게 열자!
  * 그리고 <b>Option + Enter</b>를 누르면 Assistant Editor로 화면이 분할되어 보임!
* 클래스(Class)와 인스턴스(Instance), 객체(Object) 개념 확실히 정리하기
  * 이번에는 노션 아니라 [티스토리](https://hyoz-dev-diary.tistory.com/entry/3-%EC%B0%90%ED%9A%A8%EB%8A%94-%EC%A7%80%EA%B8%88-%EC%95%BC%EA%B3%B0%EB%8B%98-%EA%B0%95%EC%9D%98-%EB%93%A3%EB%8A%94-%EC%A4%91-%EB%B6%80%EC%A0%9C-%ED%81%B4%EB%9E%98%EC%8A%A4%EA%B0%9D%EC%B2%B4%EC%9D%B8%EC%8A%A4%ED%84%B4%EC%8A%A4)에 기록했삼!
#### 스토리보드의 인스턴스들을 View 코드에 연결하기
* @IBOultet
* @IBAction
#### Gesture Recognizer
* 입력 창을 눌러 키보드가 올라왔을 때 화면을 눌러 키보드를 내려가게 한 경험! 그 때 사용하는 기능!
* 사용자에게 당연한 것이 누군가의 피땀눈물..
* 제스처를 어떻게 사용하는 지는 H.I.G 문서의 gesture 파트 참고하기
* 이미 존재하는 Gesture Recognizer 중 원하는 것이 없다면 UIGestureRecognizer 클래스를 상속받아 나만의 제스처 생성 가능!
#### 마크 주석과 마크업 주석을 잘 활용할 것!
* 마크업 주석을 통해 정보를 전달 가능
* [애플의 마크업 포맷팅 문서](https://developer.apple.com/library/archive/documentation/Xcode/Reference/xcode_markup_formatting_ref/index.html) 참고하기
<pre>
<b>복습할 내용</b>
* 코드 중간에 ... 표시는 뭘까?
  ex) <b>ViewTag.sliderRed...ViewTag.sliderAlpha</b> (in 4-ColorPicker/ViewController.swift)
</pre>
## 4번-프로젝트: Color-peaker application
* 억음부호(`, backticks)
  * 주로 존재하는 키워드와 동일한 이름을 사용할 때 사용 (상수와 변수)
  * 사용하고자 하는 키워드 앞 뒤로 붙이기
#### View - tag
* viewWithTag() 메서드
  * 해당 뷰 컨트롤러의 하위 뷰를 순회하며 전달받은 태그 값을 가진 뷰를 찾아 반환하는 메서드
  * 하위 뷰가 많아질수록 호출 횟수가 많아져 성능이 떨어질 가능성이 있음
  * 자주 쓰는 코드라면 view를 IBOutlet 프로퍼티로 할당을 하거나 일반 프로퍼티로 할당해주어서 사용하는 것이 좋음
#### [UIControlEvents](https://developer.apple.com/documentation/uikit/uicontrolevents?language=occ)
* 모든 종류의 이벤트 목록을 보고 싶다면 개발자 문서로~! (위에 링크)
* Control마다 어떤 이벤트를 catch 할 수 있는 지 확인해보는 것도 좋음
#### IBAction 메서드
* 메서드를 어디서 호출한 건 지 아는 방법? 바로 "<b>sender</b>" 매개변수
  * sender.tag/ sender.value 등을 이용
#### [UIStackView](https://developer.apple.com/documentation/uikit/uistackview)
* StackView를 사용할 때에는 AutoLayout에서 말하는 "컨텐츠 고유 크기"를 잘 이해하고 있어야 함.
  * 예제에서 살펴봤던 Slider는 "세로의 길이"를 컨텐츠 고유 크기로 갖고 있음
    * 가로 길이는 가변적이지만, 세로 길이는 강제로 지정해주지 않는 한 일정한 길이를 갖게 됨
  * AutoLayout 가이드로 컨텐츠 고유 크기에 대해 알아둘 것
#### UIPickerView
* 흔히 쓰는 날짜 Picker는 UIDatePicker 클래스를 참조하니 필요시 공부해보기~!
* 가로 영역인 <b>Component</b>와 세로 영역인 <b>row</b>(컴포넌트의 한줄씩 있는 영역)로 구분
  * 둘 다 0부터 시작, 좌표로 위치를 표시할 수 있음.
  * Component와 Row 개수는 프로그래머가 임의로 조절 가능
  * 다만, 다른 컨트롤과는 다르게 인터페이스 빌더에서 Component/Row의 개수, 인터페이스의 초기값 지정 불가
    * 이는 Delegate Design Pattern을 참고!
#### Delegation Programming Design Pattern
> Delegation: "위임", "위임하다(delgate)"/ 자신이 할일을 다른 객체에게 위임하는 형태
* 이 프로젝트에서는 PicerView 객체를 ViewController 객체에게 delegate
* DataSource 메서드, Delegate 메서드 (like 비서)
  * DataSource: PickerView가 화면에 표현해줄 데이터의 기반을 DataSource의 객체에게 맡겨두고 가져올 때 사용
  * PickerView라는 매개변수로 자신을 밝히는 이유
    * ViewController가 데이터를 제공해야 하는 객체가 여러 개 일 수 있으므로 누가 보냈는 지 알아야 함
  * 즉, 위임받은 일을 적절히 처리하거나 그에 맞는 값을 반환하는 일을 하는 약속
<pre>
<b>도전 과제 </b>
> 4-1-Challenge-ColorPicker
* 이번 프로젝트를 colorView와 pickerView(@IBOutlet) 없이 태그를 활용하여 동작하도록 구현해보기
* pickerView의 row 사이값을 5로 변경하기
</pre>

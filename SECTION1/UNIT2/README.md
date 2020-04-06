# 야곰의 iOS 프로그래밍
* 선행과목 : [야곰의 스위프트 기본 문법 강좌](https://www.inflearn.com/course/%EC%8A%A4%EC%9C%84%ED%94%84%ED%8A%B8-%EA%B8%B0%EB%B3%B8-%EB%AC%B8%EB%B2%95/)
<pre>* 선행과목을 이수했지만, iOS 프로그래밍 강좌를 들으며 어렵거나 어색하게 느끼는 부분들을 다시 공부할 것!
* <b>SECTION2 디렉토리</b>에 별도 저장할 것. </pre>
* 이 강의를 1회 학습 시에는 너무 완벽하게 하는 것 보다는 완강을 하고 잘 따라가는 것을 목표로 하기

## ✰ 1번-프로젝트: 웹 브라우저 만들기
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
## ✰ 2번-프로젝트: 내 소개 애플리케이션
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
## ✰ 3번-프로젝트: Up-down Game
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
## ✰ 4번-프로젝트: Color-peaker application
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
  * Auto Layout Guide에서 컨텐츠 고유 크기와 Dynamic StackView에 대해 살펴볼 것
* StackView는 컨텐츠 고유 크기와 View 사이의 거리 간격을 가지고 View를 쌓아 배치
* Auto Layout과 StackView는 연습이 많이 필요하니 관련 내용이 나오면 관련 문서를 보며 이해해나갈 것!
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

## ✰ 5번-프로젝트: 반려동물 소개 애플리케이션
### 학습 내용
#### label과 text view의 차이?
* label
  * 짧은 글을 보여주는 정도의 기능. 복사나 드래그 등의 기능 불가!
* text view
  * 사용자가 입력 및 편집하거나 복사하는 등의 작업이 가능.
  * 텍스트가 길어지면 스크롤도 가능하기 때문에 길이가 긴 텍스트를 넣을 때 사용하기 용이
  * 물론 수정하지 못 하게 설정하는 것 또한 가능!
  * 레이블과 다르게 텍스트에 포함된 URL이나 전화번호 등을 찾아줘서 링크를 걸어주는 등의 기능도 가능.
* <b>sender</b>?
  * 메서드의 매개변수로 있는 sender는 그 메서드를 호출되게 한 장본인!
#### View Transition
> iOS 환경에서 화면을 전환하는 두 가지 방법
* <b>View Controller 문서 꼭 읽기!!!</b>
* <b>Navigation Controller 문서도 꼭 읽기!!!</b>
* 기획자나 디자이너가 화면 전환을 애플의 사용자 경험과 다른 기획을 내놓았다면, H.I.G. 문서를 통해 다시 상의하는 것 중요
<pre>
<b>(1) Present Modally (Modality)</b>
* 흐름 없이 간단한 화면을 보여줄 수 있는 장치 (like 팝업 윈도우 in 인터넷 브라우저)
* 눈 여겨 보아야 할 정보나, 흐름과 관계 없이 부가적으로 보여주어야 할 경우!
* iOS에서는 사용자가 꼭 수행해야 하는 중요한 화면을 표시할 때 많이 사용
  -> 예: 특정 메세지와 함께 선택지를 주는 alert/ Action Sheet, 메세지 작성이나 메일 등!
<b>[화면 구성]</b>
* 아래에서 올라오는 것이 기본적인 화면 전환
* 화면의 전체를 가리는 경우, 일부를 가리는 경우, 창처럼 뜨는 경우 등 다양한 형태 가능
<b>[제작 시 제안사항]</b>
* 애플리케이션 기능의 흐름을 끊기 때문에 모달 흐름의 사용을 최소화할 것을 제안
* 사용한다면 간단하고 짧게 flow를 마치도록 설계할 것을 제안
</pre>
<pre>
<b>(2) Navigation</b>
* 흐름에 따라 화면을 이동하는 인터페이스
* 정보 또는 기능이 단계적일 때 사용
  * <b>(1) 계층적 네비게이션 흐름(Hierarchical Navigation)</b>
    * 하나의 화면이 여러 정버의 갈래로 분기하는 흐름
    * 예: 메일, 설정 앱
  * <b>(2) 수평적 네비게이션 구성(Flat Navigation)</b>
    * 여러 카테고리로 나뉜 정보의 흐름을 구성하는 방식
    * 탭바와 결합하는 탭 인터페이스와 많이 결합해서 사용
    * 예: 음악, 스토어 앱
  * <b>(3) 컨텐츠 경험 중심 네비게이션 방식(Content-Driven/ Experience-Driven Navigation)</b>
    * 자유롭게 화면 이동, 정보의 흐름이 복합적일 때 사용
    * 예: 게임
  * 위의 세 가지 방식을 혼합해서 사용할 수 있지만, 중요한 것은 사용자에게 혼란을 주지 않는 정보 전환!
</pre>
#### Navigation Controller
> 여러 뷰 컨트롤러를 화면의 흐름에 따라 제어할 때 사용
* UIViewController를 상속받은 View Controller의 일종
* 자신의 뷰를 가지고 있지는 않음
  * 대신 자신의 관리하는 첫 뷰 컨트롤러의 뷰가 네비게이션 컨트롤러의 첫 뷰!
  * 관리하는 뷰 컨트롤러를 최소한 하나는 가지고 있어야 함
    * 이를 <b>root view controller</b>라고 함
* 여러 뷰 컨트롤러 인스턴스를 <b>스택 형식</b>으로 관리
  * 다음 화면을 넘어갈 때 이전 화면을 스택에 <b>push</b> 해 두고 다음 화면으로 전환
  * 돌아갈 때, 스택에서 <b>pop</b>을 통해 이전 화면을 불러 옴
<pre>
<b>Navigation Bar</b>
* 네비게이션 컨트롤러를 이용하면 상단에 네비게이션 바가 생김
 -> 이는 숨기고 보이도록 전환할 수 있다. 이는 <b>navigation controller</b>가 관리.
* UINavigationBar 문서 확인
* 네비게이션 컨트롤러의 아이템은 [아이템 영역/ 타이틀 영역/ 아이템 영역] 으로 구성
  * 각각은 각각의 뷰 컨트롤러가 관리, 네비게이션 컨트롤러가 관리하는 것 아님!
</pre>
#### 스토리보드 세그(segue)
* 다음 화면으로 네비게이션하게 만드는 것 (UIKit의 화면 전환을 위해 사용)
  * 전환 시 <b>prepare()</b> 메서드 호출, 화면 전환 시 사전 준비를 하라~는 의미 (달려있는 주석 꼭 참고!)
<pre>
* <b>source</b>: 세그를 작동시키는 원천 뷰 컨트롤러
* <b>destination</b>: 목적지 뷰 컨트롤러
* <b>identifier</b>: 세그를 구분시킬 수 있는 뷰 
</pre>
* 스토리보드에서 뷰 컨트롤러를 연결하는 선으로 표현
* <b>화면 전환 방법, 전환의 시작지와 목적지</b>에 대한 정보를 가지고 있음
  * 화면 전환 방법에 따라 세그를 표현하는 아이콘이 달랐음!
* UIStoryboardSegue 클래스 사용
  * 기본 애니메이션 외 커스텀 애니메이션을 제작하고 싶다면 클래스를 상속받아 구현
#### Asset Catalog
> 다양한 데이터 리소스를 관리
* <b>야곰 문서 꼭 읽을 것</b>
<pre>
<b>Asset</b>이란, 애플리케이션에서 필요한 기본 리소스
* 기기나 기종에 따른 여러 상황에 대처할 수 있는 동일한 리소스를 묶어서 관리
* 파일들을 한 폴더 안에 넣어두고 언제 어떨 때에 쓰는 지에 대한 정보는 Contents.json 파일로 정리
* Asset type으로는 아이콘, 색상, 데이터, 이미지, 런치 이미지, 스티커 등이 있음
</pre>
* Asset Catalog는 Asset의 모음집
* 한 프로젝트 내에는 다수의 Asset catalog 존재 가능
  * 한 Asset catalog 내에는 다수의 Asset 존재 가능
  * 다양한 타입의 asset을 묶어 asset catalog를 만드는 것도 가능
<pre>
<b>* 디자이너가 asset catalog 형태가 아닌 이미지 파일만 전해줬다면?</b>

(1) Xcode navigation 영역에서 오른쪽 클릭 -> New File...
  (1-2) 아니면 새 파일 생성하기를 별도로 들어가도 OK~!
(2) Resource 섹션에서 Asset Catalog 선택 -> 이름 설정
(3) + 버튼을 누르거나 빈 영역에서 오른쪽 버튼 -> New image set 누름
(4) image라는 set이 생기지만 이름 변경 가능
(5) 이 때 이미지를 끌고 오면 된다! 이 때 파일 이름에 규칙 필요!!
    * [파일이름@nx.png] @1x: 일반 디스플레이, @2x: 레티나용, @3x: HD 디스플레이용
    * [파일이름~장치이름@nx.png] ex) image~iPad@ix.png
(6) 장치별로 다른 이미지를 사용하려고 한다면 구분 가능 (디폴트로 universal)
</pre>
#### Property List
> 데이터를 구조화해서 표현할 수 있는 방법: 확장자는 plist
* 키와 값의 쌍으로 데이터를 구조화 한 것
* XML 구조를 사용하여 이를 불러오고 저장할 수 있음
* Object-C나 Swift의 딕셔너리 혹은 배열의 형태로 불러와서 사용할 수 있음
* 다룰 수 있는 타입은 배열, 문자열, 숫자, 데이터, 날짜 등 다양
<pre>
- Property list 문서를 통해 다양한 방법을 알아보는 것도 추천
- info.plist에 대한 내용을 문서로 읽어볼 것 추천
   - 애플 앱 스토어에 출시할 때 신경을 많이 써야 할 부분!
</pre>
#### Swift - Codable
> 구조화된 데이터를 스위프트 타입의 인스턴스로 디코딩, 그리고 그 반대의 인코딩
* 스위프트 언어의 기능 (프로토콜)
#### MVC Programming Design Pattern
> iOS 프레임워크의 큰 근간을 이루는 MVC 패턴
* [Notion_MVC-Pattern](https://www.notion.so/MVC-Design-Pattern-176300768f914c0991c43bb03ab55864)에 정리 중!
* 전통 MVC 패턴과는 다르다! 이 강의에서 다루는 것은 <b>apple이 말하는 MVC</b>에 입각해서 설명.
* 이번 프로젝트에서는 UIView=View, UIViewController=Controller, AnimalInfo(이번엔 구조체)=Model
* 오브젝트 목록에서 노란색은 Controller
<pre>
<b>복습할 내용</b>
* 열거형
</pre>

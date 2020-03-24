# 야곰의 iOS 프로그래밍
* 선행과목 : [야곰의 스위프트 기본 문법 강좌](https://www.inflearn.com/course/%EC%8A%A4%EC%9C%84%ED%94%84%ED%8A%B8-%EA%B8%B0%EB%B3%B8-%EB%AC%B8%EB%B2%95/)
> 선행과목을 이미 이수했지만, iOS 프로그래밍 강좌를 들으며 생소하게 느끼는 부분들을 <b>SECTION2 디렉토리</b>에 별도 저장할 것.

## 1번-프로젝트: 웹 브라우저 만들기
### 학습 내용
* Xcode를 이용하여 화면 구성
  * 툴바, 툴바 버튼, 웹 브라우저, 액티비티 인디케이터
  * 오브젝트 라이브러리 열기는 Command+Shif+L
* 커넥션 인스펙터를 통한 버튼과 컨트롤러 연결
* 화면 정렬 및 구성하기
* 어트리뷰트 인스펙터를 통해 오브젝트 모양 및 색상 변경
### 복습할 문법
* 함수 표현
* guard 구문
* as 연산자
* extension
## 2번-프로젝트: 내 소개 애플리케이션
> 애플은 사용자 경험, 즉 UX를 중요시 함.
### 학습 내용
* 인터페이스 빌더로 레이아웃 구성하기
  * text field의 PlaceHolder 기능을 이용하여 어떤 내용을 입력할 지 보여주는 미리보기(?) 쓰기
  * keyboard type: 상황에 따라 다른 키보드 보여줄 수 있음(ex: 이메일, 기본 영문, 폰패드 등)
* iOS 프로그래밍의 기본: UIKit 프레임워크
  * User Interface Kit의 약자
  * Foundation 프레임 워크와 더불어 iOS의 큰 기능을 이루는 뼈대
  * <b>개발자 문서를 스스로 보면서 프레임워크 익히기 (단축키: Command+Shift+0)</b>
* Auto Layout   
<img src="https://github.com/dev-hjJoo/iOS-study/blob/master/SECTION1/UNIT2/img/2-myProfile-img3.png" width="60%" height="35%"></img> 
  * 제약 사항 간의 충돌이 가능한 없게 만들기
  * 충돌을 없앨 때에는 Size inspector 에 들어가서 진행
  * 충돌이 너무 많이 일어난다? Constraints(제약) 모두 없애고 다시 설정해보자..
* Human Interface Guidelines for iOS (H.I.G.)
  * 사용자의 입장에서 경험해봤을 법한 것들이 많음
  * 애플 플랫폼에 익숙해진 사용자는 이 경험과 다른 느낌의 경험을 느끼게 되면 불편함을 느낄 수 있음
    * -> 애플리케이션을 사용하지 않을 확률 존재
    * 그래서 중요! 사용자에게도 기획자에게도 중요한 문서
    * 디자이너를 위한 Resource도 제공
  * 사용자와 상호작용을 하면서 어떤 요소를 사용해야 하는 지 등의 정보를 알 수 있음
  * <b>모든 내용을 꼭 정독해보길 바람!!</b>
* View Programming Guide
  * 시뮬레이션이 실행 중인 상태에서 디버그 영역에 Debug View Hierarchy 누르면 화면의 상태를 알 수 있음
  * 가장 밑바닥의 검은색 화면 = Window -> View -> 다양한 화면 구성
  * 이에 대한 가이드라인 = View Programming Guide
### 복습할 내용
* Auto Layout 설정하기
* H.I.G. 문서 정독하기
* 야곰님 보충 자료 참고하기

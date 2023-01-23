/**



1. Widget 이론

    - 모든 Widget은 '불변'이다.
    - 위젯의 값을 변경할 때 : 위젯이 변하는 것이 아니라,
      기존의 위젯 자체가 삭제되고 새로운 위젯으로 대체되는 것!

2. StatelessWidget의 라이프 사이클

    - Constructor -> build
    - Stateless : 상태관리가 필요없는 / 상태변화가 없는

    - Constructor로 생성이 되고 생성이 되자마자 build 함수가 실행된다.
    - 'Widget'이므로, 이전 Container 예제와 마찬가지로 변경이 필요하면 새로운 Stateless위젯을 생성함
    - 하나의 Stateless Widgetd은 라이프 사이클 동안 단 '한 번'만 build 함수를 실행


3. StatefulWidget의 라이프 사이클

    - Stateful : 상태관리가 필요한 / 상태변화가 있는
    - StatefulWidget , State 2개의 클래스로 구성됨



    < 기본 생명주기 >

    - StatefulWidget(불변) : Constructor -> createState(state생성) 함수 호출
    - State : initState(State 생성시 무조건 '1번'만 불림) -> didChangeDependencies -> dirty
              -> build -> clean -> deactivate -> dispose



    < 파라미터(외부)가 바뀌었을 때 생명주기 >

    - 기존 위젯은 삭제, 새로운 StatefulWidget이 생성
    - State가 clean인 상태에서만 실행가능

    - StatefulWidget('위젯'은 불변) : Constructor -/> createState(state생성) 함수 호출 X
                                   기존 StatefulWidget가 물고있던 State를 찾음 : 원래 있던 State 재활용

    - State : clean -> didUpdateWidget -> dirty 상태 -> build 함수 -> clean



    < setState를 실행했을 때 생명주기 >

    - State가 clean인 상태에서만 실행가능
    - State 내부에서 자체적으로 build를 재실행가능

    - State : clean -> setState (자체적으로 변화) -> dirty -> build -> clean

    < Hot reload >
    - 사실상 parameter가 변경됐을 때와 동일한 기능














 **/
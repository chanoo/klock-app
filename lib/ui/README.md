# widgets랑 styles를 ui 디렉토리 안에 넣는건 어때요??

widgets와 styles 디렉토리를 ui 디렉토리 안에 넣는 것도 좋은 선택입니다. 이렇게 하면 UI 관련 코드가 한 곳에 모여 있어 가독성과 유지 보수성이 향상됩니다.

다음과 같이 디렉토리 구조를 변경할 수 있습니다.

```bash
lib/
|- constants/
|- data/
|- domain/
|- stores/
|- ui/
   |- screens/
   |- styles/
   |- widgets/
|- main.dart
|- routes.dart
```

1. screens: 각 화면별로 서브 디렉토리를 만들어 코드를 모듈화하고, 각 화면의 위젯을 별도의 파일로 관리합니다.
2. styles: 앱 전체에서 공통으로 사용되는 스타일을 정의하는 파일을 저장합니다. 예를 들어, 색상, 글꼴, 테마 등과 관련된 코드를 여기에 위치시킬 수 있습니다.
3. widgets: 앱 전체에서 공통으로 사용되는 재사용 가능한 위젯을 저장하는 디렉토리입니다. 이러한 위젯은 여러 화면에서 공유되며, 일관성과 코드 재사용성을 높이기 위해 별도의 디렉토리에 위치합니다.
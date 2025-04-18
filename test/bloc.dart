import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocktail/mocktail.dart';


class DependencyClass {
  String saySomething() {
    return 'Fatakat';
  }
}
// Here we are mocking the DependencyClass
class MockDependencyClass extends Mock implements DependencyClass {}

class UnitClass{
  void action(String input){
    print(input);
  }
}

void main() {
  MockDependencyClass mockDependencyClass = MockDependencyClass();
  when(() => mockDependencyClass.saySomething()).thenReturn('Mocked Fatakat');
  UnitClass unitClass = UnitClass();
  String result = mockDependencyClass.saySomething();
  unitClass.action(result);
}


import 'package:flutter_test/flutter_test.dart';
import 'package:randomizer/randomizer.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    
    Randomizer randomizer = Randomizer();
    String image = randomizer.getrandomelementfromlist(['assets/fundo1.jpg', 'assets/fundo2.jpg', 
    'assets/fundo3.jpg', 'assets/fundo4.jpg']);
  
    print(image);
    expect(1, 1);
  });
}

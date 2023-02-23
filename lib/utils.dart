import 'dart:math';
import 'dart:ui';

class Utils {
  static Color generateRandomColor() {
    Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  static String getRandomString() {
    List<String> strings = ['Hey There!', 'Hello World!', 'Glad to see you!'];
    return strings[Random().nextInt(strings.length)];
  }
}
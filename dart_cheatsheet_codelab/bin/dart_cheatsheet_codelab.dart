/// *******************************************************************************************
/// String interpolation

/*
String stringify(int x, int y) {
  return '$x $y';
}
*/

/// *******************************************************************************************
/// Nullable variables

/*
// Declare the two variables here
String? name = 'Jane';
String? address = null;
*/

/// *******************************************************************************************
/// Null-aware operators

/*
String? foo = 'a string';
String? bar; // = null

// Substitute an operator that makes 'a string' be assigned to baz.
String? baz = foo ?? bar;

void updateSomeVars() {
  // Substitute an operator that makes 'a string' be assigned to bar.
  bar ??= 'a string';
}
*/

/// *******************************************************************************************
/// Conditional property access

/*
// This method should return the uppercase version of `str`
// or null if `str` is null.
String? upperCaseIt(String? str) {
  // Try conditionally accessing the `toUpperCase` method here.
  return str?.toUpperCase();
}
*/

/// *******************************************************************************************
/// Collection literals

/*
// Assign this a list containing 'a', 'b', and 'c' in that order:
final aListOfStrings = <String>['a', 'b', 'c'];

// Assign this a set containing 3, 4, and 5:
final aSetOfInts = <int>{3, 4, 5};

// Assign this a map of String to int so that aMapOfStringsToInts['myKey'] returns 12:
final aMapOfStringsToInts = <String, int>{'myKey': 12};

// Assign this an empty List<double>:
final anEmptyListOfDouble = <double>[];

// Assign this an empty Set<String>:
final anEmptySetOfString = <String>{};

// Assign this an empty Map of double to int:
final anEmptyMapOfDoublesToInts = <double, int>{};
*/

/// *******************************************************************************************
/// Arrow syntax

/*
class MyClass {
  int value1 = 2;
  int value2 = 3;
  int value3 = 5;

  // Returns the product of the above values:
  int get product => value1 * value2 * value3;

  // Adds 1 to value1:
  void incrementValue1() => value1++;

  // Returns a string containing each item in the
  // list, separated by commas (e.g. 'a,b,c'):
  String joinWithCommas(List<String> strings) => strings.join(',');
}
*/

/// *******************************************************************************************
/// Cascades

/*
class BigObject {
  int anInt = 0;
  String aString = '';
  List<double> aList = [];
  bool _done = false;

  void allDone() {
    _done = true;
  }
}

BigObject fillBigObject(BigObject obj) {
  // Create a single statement that will update and return obj:
  return obj
    ..anInt = 1
    ..aString = 'String!'
    ..aList = [3.0]
    ..allDone();
}
*/

/// *******************************************************************************************
/// Getters and setters

/*
class InvalidPriceException {}

class ShoppingCart {
  List<double> _prices = [];

  // Add a "total" getter here:
  double get total {
    return _prices.fold(0, (sum, price) => sum += price);
  }

  // Add a "prices" setter here:
  set prices(List<double> newList) {
    if (newList.any((element) => element < 0)) {
      throw InvalidPriceException();
    }
    _prices = newList;
  }
}

void main() {
  var cart = ShoppingCart();
  print(cart.total); // 0

  cart.prices = [1.01, 2.2, 3.14, 5.7, 100.1];
  print(cart.total); // 112.15

  cart.prices = [1.01, -2.2]; // InvalidPriceException
}
*/

/// *******************************************************************************************
/// Optional positional parameters

/*
String joinWithCommas(int a, [int? b, int? c, int? d, int? e]) {
  String str = '$a';
  if (b != null) str += ',$b';
  if (c != null) str += ',$c';
  if (d != null) str += ',$d';
  if (e != null) str += ',$e';
  return str;
}

void main() {
  print(joinWithCommas(1)); // '1'
  print(joinWithCommas(1, 2, 3)); // '1,2,3'
  print(joinWithCommas(1, 1, 1, 1, 1)); // '1,1,1,1,1'
}
*/

/// *******************************************************************************************
/// Named parameters

/*
class MyDataObject {
  final int anInt;
  final String aString;
  final double aDouble;

  MyDataObject({
    this.anInt = 1,
    this.aString = 'Old!',
    this.aDouble = 2.0,
  });

  // Add your copyWith method here:
  MyDataObject copyWith({int? newInt, String? newString, double? newDouble}) {
    // newInt ??= anInt;
    // newString ??= aString;
    // newDouble ??= aDouble;
    return MyDataObject(
      anInt: newInt ?? anInt,
      aString: newString ?? aString,
      aDouble: newDouble ?? aDouble,
    );
  }
}

void main() {
  MyDataObject obj = MyDataObject();
  print(obj.anInt); // 1
  print(obj.aString); // Old!
  print(obj.aDouble); // 2.0

  print('');

  MyDataObject newObj = obj.copyWith(
    newInt: 12,
    newString: 'New!!',
    newDouble: 3.4,
  );
  print(newObj.anInt); // 12
  print(newObj.aString); // New!!
  print(newObj.aDouble); // 3.4

  print('');

  MyDataObject anotherObj = obj.copyWith(
    newString: 'Another!',
  );
  print(anotherObj.anInt); // 1
  print(anotherObj.aString); // Another!
  print(anotherObj.aDouble); // 2.0
}
*/

/// *******************************************************************************************
/// Exceptions

/*
typedef VoidFunction = void Function();

class ExceptionWithMessage {
  final String message;
  const ExceptionWithMessage(this.message);
}

// Call logException to log an exception, and doneLogging when finished.
abstract class Logger {
  void logException(Type t, [String? msg]);
  void doneLogging();
}

void tryFunction(VoidFunction untrustworthy, Logger logger) {
  // Invoking this method might cause an exception. Catch and handle
  // them using try-on-catch-finally.
  // untrustworthy();
  try {
    untrustworthy();
  } on ExceptionWithMessage catch (e) {
    logger.logException(e.runtimeType, e.message);
  } on Exception catch (e) {
    logger.logException(e.runtimeType);
  } finally {
    logger.doneLogging();
  }
}
*/

/// *******************************************************************************************
/// Using this in a constructor

/*
class MyClass {
  final int anInt;
  final String aString;
  final double aDouble;

  // Create a constructor here.
  MyClass(this.anInt, this.aString, this.aDouble);
}
*/

/// *******************************************************************************************
/// Initializer lists

class FirstTwoLetters {
  final String letterOne;
  final String letterTwo;

  // Create a constructor with an initializer list here:
  FirstTwoLetters(String word)
      : assert(word.length >= 2),
        letterOne = word[0],
        letterTwo = word[1];
}

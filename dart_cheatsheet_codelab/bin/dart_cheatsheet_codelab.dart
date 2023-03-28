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

/// *******************************************************************************************
/// String interpolation

/*
String stringify(int x, int y) {
  return '$x $y';
}
*/

/// *******************************************************************************************
/// Nullable variables

// Declare the two variables here
String? name = 'Jane';
String? address = null;

/// *******************************************************************************************
/// Null-aware operators

String? foo = 'a string';
String? bar; // = null

// Substitute an operator that makes 'a string' be assigned to baz.
String? baz = foo ?? bar;

void updateSomeVars() {
  // Substitute an operator that makes 'a string' be assigned to bar.
  bar ??= 'a string';
}

/// *******************************************************************************************
/// Conditional property access

// This method should return the uppercase version of `str`
// or null if `str` is null.
String? upperCaseIt(String? str) {
  // Try conditionally accessing the `toUpperCase` method here.
  return str?.toUpperCase();
}

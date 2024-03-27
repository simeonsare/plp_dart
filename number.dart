import 'dart:io';

void main() {
  stdout.write("Please enter a number: ");
  String input = stdin.readLineSync()!;
  
  // Parse input string to integer
  int number = int.tryParse(input) ?? 0;

  if (number > 10) {
    print("Your number is greater than 10");
  } else if (number < 10) {
    print("Your number is less than 10");
  } else {
    print("Your number is equal to 10");
  }
}

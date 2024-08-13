import 'dart:io';
import 'package:dart_application_3/dart_application_3.dart'
    as dart_application_3;

void main(List<String> arguments) {
  // Initialize an empty list to store grades
  List<int> grades = [];

  // Ask the user how many grades they want to enter
  print('How many grades do you want to enter?');
  int numberOfGrades = int.parse(stdin.readLineSync()!);

  // Loop to get grades from the user
  for (int i = 0; i < numberOfGrades; i++) {
    int grade;
    while (true) {
      // Prompt the user to enter a grade
      print('Enter grade ${i + 1} (between 0 and 100):');
      grade = int.parse(stdin.readLineSync()!);

      // Check if the grade is between 0 and 100
      if (grade >= 0 && grade <= 100) {
        grades.add(grade); // Insert the valid grade into the list
        break; // Exit the loop since the grade is valid
      } else {
        print('Invalid grade. Please enter a grade between 0 and 100.');
      }
    }
  }
// print the average of the grades
  int totalSum = 0;
  double totalAvg = 0;
  for (int i = 0; i < grades.length; i++) {
    totalSum = totalSum + grades[i];
  }
  totalAvg = totalSum / grades.length;
  print('the average is ${totalAvg}');
  if (totalAvg > 60) {
    print("the result succses");
  } else {
    print('the result failure');
  }
  // Print the list of grades
  print('List of grades:');
  for (var grade in grades) {
    print(grade);
  }
}

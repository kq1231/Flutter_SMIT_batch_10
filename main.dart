import 'dart:io';
import 'dart:math';

void main() {
  // Bismillahir-Rahmanir-Rahim
  // Allahumma Salli 'ala Muhammad

  // Write a program that takes a list of numbers as input and prints the
  // even numbers in the list using a for loop.
  void even(List nums) {
    List evenNums = List.empty(growable: true);
    for (var i in nums) {
      i % 2 == 0 ? evenNums.add(i) : 0;
    }
    print(evenNums);
  }

  even([2, 3, 4, 5, 6, 7, 8, 9, 10]); // > [2, 4, 6, 8, 10]

  //  Write a program that prints the Fibonacci sequence up to a given
  // number using a for loop.

  void fibonacci(int limit) {
    List nums = [0, 1];
    while (true) {
      int num = nums[nums.length - 1] + nums[nums.length - 2];
      if (num < limit) {
        nums.add(num);
      } else {
        break;
      }
    }
    print(nums);
  }

  fibonacci(20); // > [0, 1, 1, 2, 3, 5, 8, 13]

  // Implement a code that checks whether a given number is prime or not.
  void checkPrime(int n) {
    bool isPrime = true;
    for (int i = 2; i < sqrt(n); i++) {
      if (n % i == 0) {
        isPrime = false;
      }
    }
    isPrime ? print("Number is prime") : print("Number not prime");
  }

  checkPrime(101); // > Number is prime
  checkPrime(24); // > Number not prime
  checkPrime(63); // > Number not prime

  // Implement a code that finds the factorial of a number using a while
  // or for loop
  void factorial(int num) {
    for (int i = num - 1; i > 0; i--) {
      num *= i;
    }
    print(num);
  }

  factorial(5); // > 120

  //  Write a program that calculates the sum of all the digits in a given
  // number using a while loop.
  void sumOfDigits(int num) {
    int sum = 0;
    String numAsString = num.toString();
    for (int i = 0; i < numAsString.length; i++) {
      sum += int.parse(numAsString[i]);
    }
    print(sum);
  }

  sumOfDigits(123456); // > 21

  // Write a function to find the largest number in a list
  // To tackle this problem, we can sort the list
  // Bubble sort algorithm:
  // https://www.tutorialspoint.com/data_structures_algorithms/bubble_sort_algorithm.htm
  void findLargestElement(List list) {
    for (var i = 0; i < list.length - 1; i++) {
      bool swapped = false;
      for (var j = 0; j < list.length - 1; j++) {
        var temp = list[j];
        if (list[j] > list[j + 1]) {
          swapped = true;
          list[j] = list[j + 1];
          list[j + 1] = temp;
        } else {
          swapped = false;
        }
      }
    }
    print("${list.last} is the largest element");
  }

  findLargestElement([2, 3, 7, 5, 1]); // > 7 is the largest element

  // Write a program that prints the multiplication table of a given number
  // using a for loop.
  void generateTable(int num) {
    for (int i in Iterable.generate(10, (index) => index + 1)) {
      print("${num} * $i = ${num * i}");
    }
    // Second method
    // for (int i = 1; i < 11; i++) {
    //   print("${num} * $i = ${num * i}");
    // }
  }

  generateTable(7);

  // Check if a string is a palindrome or not
  void isPalindrome(String string) {
    string = string.toLowerCase();
    String reversed = "";
    for (int i = string.length - 1; i >= 0; i--) {
      reversed += string[i];
    }

    // Second method of loop
    // for (int i in Iterable.generate(
    //     string.length, (index) => (string.length - 1) - index)) {
    //   reversed += string[i];
    // }

    reversed == string
        ? print("${string} is a palindrome")
        : print("${string} is NOT a palindrome");
  }

  isPalindrome("Racecar");

  // display the cube of the number up to an integer
  void calculateCubes(int num) {
    for (int i = 1; i < num + 1; i++) {
      print("Number is: $i and cube of $i is: ${pow(i, 3)}");
    }
  }

  calculateCubes(5);

  // display a pattern like a right angle triangle using an
  // asterisk using loop.
  // *
  // **
  // ***
  // ****
  void rightAngledTriangleWithAsterisks() {
    for (int i = 0; i < 5; i++) {
      print("*" *
          i); // NOTE: When we multiply a string, it means we repeat the string that many times.
    }
  }

  rightAngledTriangleWithAsterisks();

  // display a pattern like a right angle triangle with a
  // number using loop
  void rightAngledTriangleWithNumbers() {
    String str = "";
    for (int i = 1; i < 5; i++) {
      str += i
          .toString(); // When we add a string to a string, we join them together.
      // That is the reason I am converting i to String. Otherwise you will get error.
      // Error will say: cannot add integer to string.
      print(str);
    }
  }

  rightAngledTriangleWithNumbers();

  // Write a program to make such a pattern like a right angle triangle with
  // a number which will repeat a number in a row
  void rightAngledTriangleWithNumbersRepeatedInRow() {
    for (int i = 1; i < 5; i++) {
      print(i.toString() *
          i); // i ko string bana kar us ko i times multiply kardo. Simple.
    }
  }

  rightAngledTriangleWithNumbersRepeatedInRow();

  // make such a pattern like a right angle triangle with
  // the number increased by 1 using loop
  void rightAngledTriangleWithIncrementingNumbers() {
    int num = 0;
    for (int i = 1; i < 5; i++) {
      String str = "";
      for (int j = 0; j < i; j++) {
        num++;
        str += num.toString();
      }
      print(str);
    }
  }

  rightAngledTriangleWithIncrementingNumbers();

  // make a pyramid pattern with numbers increased by 1
  void pyramidWithIncrementingNumbers() {
    int num = 0;
    for (int i = 1; i < 5; i++) {
      String str = "";
      for (int j = 0; j < i; j++) {
        num++;
        str += num.toString() + " ";
      }
      print(" " * (4 - i) + str);
    }
  }

  pyramidWithIncrementingNumbers();

  // Write a program to make such a pattern as a pyramid with an asterisk
  void pyramidWithAsterisk(int numOfRows) {
    for (int i = 1; i < numOfRows + 1; i++) {
      print(" " * (numOfRows - i) + "* " * i); // The spaces are important
    }
  }

  pyramidWithAsterisk(4);

  // Write a program that asks the user for their email and password. If the
  // email and password match a predefined set of credentials, print "User
  // login successful." Otherwise, keep asking for the email and password
  // until the correct credentials are provided.
  void verifyCredentials() {
    // Key is the email and value is the password
    Map database = {
      "abcd@gmail.com": "1234#^^&",
      "abcdefg@hotmail.com": "4321*272us#"
    };
    String? email =
        ""; // Don't be confused about the ? mark before the string. We haven't studied nullable values right now so don't worry.
    String? pass = "";
    while (!database.containsKey(email) && !(database[email] == pass)) {
      print("Enter your email: ");
      email = stdin.readLineSync();
      print("Enter your pass: ");
      pass = stdin.readLineSync();
    }
    print("Verification Successful");
  }

  // verifyCredentials();

  // Write a program that takes a list of numbers as input and prints the
  // numbers greater than 5 using a for loop and if-else condition
  void isMoreThanFive(List nums) {
    for (int num in nums) {
      num > 5 ? print(num) : null;
    }
  }

  isMoreThanFive([29, 3, 54, 7, 8, 2, 4]);

  // Write a program that counts the number of vowels in a given string
  // using a for loop and if-else condition
  // TIP: In these types of scenarios, you need to check each alphabet 'in order'.
  void numberOfVowels(String str) {
    int num = 0;
    for (int i = 0; i < str.length; i++) {
      if ("aeiou".contains(str[i].toLowerCase())) {
        // Lower case is liye kiun ke capital word ho sakta hai str men
        num++;
      }
    }
    print("Number of vowels: $num");
  }

  numberOfVowels("hello mera naam Abu Hurairah hai");

  // Implement a code that finds the maximum and minimum elements in a
  // list using a for loop and if-else condition
  // TIP: Use a sorting algorithm. The easiest one is bubble sort.
  void findMinAndMax(List nums) {
    for (var i = 0; i < nums.length - 1; i++) {
      bool swapped = false;
      for (var j = 0; j < nums.length - 1; j++) {
        var temp = nums[j];
        if (nums[j] > nums[j + 1]) {
          swapped = true;
          nums[j] = nums[j + 1];
          nums[j + 1] = temp;
        } else {
          swapped = false;
        }
      }
    }
    print("Largest is ${nums.last} and lowest is ${nums[0]}");
  }

  findMinAndMax([2, 33, 5, 6, 1, 29, 100, 39]);

  // Write a program that calculates the sum of the squares of all odd
  // numbers in a given list using a for loop and if-else condition
  void sumOfSquaresOfOddNumbers(List nums) {
    dynamic sum = 0;
    for (int num in nums) {
      if (num % 2 == 1) {
        sum += pow(num, 2);
      }
    }
    print("The sum is $sum");
  }

  sumOfSquaresOfOddNumbers([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);

  // Write a program that takes a list of student details as input, where
  // each student is represented by a map containing their name, marks,
  // section, and roll number. The program should determine the grade of
  // each student based on their average score (assuming maximum marks
  // for each subject is 100) and print the student's name along with their
  // grade
  void calculateGrade(List<Map> studentDetails) {
    for (Map student in studentDetails) {
      dynamic sum = 0;
      student["marks"].forEach((subjectMarks) => sum += subjectMarks);
      var avgMarks = sum / student["marks"].length;
      String grade = "";
      List grades = [
        [90, 100, "A"],
        [80, 90, "B"],
        [55, 80, "C"]
      ];

      for (List gradeInfo in grades) {
        if (gradeInfo[0] <= avgMarks && gradeInfo[1] > avgMarks) {
          grade = gradeInfo.last;
        }
      }
      print(
          "${student["name"]} has achieved grade: $grade and average marks are ${avgMarks.round()}");
    }
  }

  calculateGrade([
    {
      'name': 'John',
      'marks': [80, 75, 90],
      'section': 'A',
      'rollNumber': 101
    },
    {
      'name': 'Emma',
      'marks': [95, 92, 88],
      'section': 'B',
      'rollNumber': 102
    },
    {
      'name': 'Ryan',
      'marks': [70, 65, 75],
      'section': 'A',
      'rollNumber': 103
    },
  ]);

  // Implement a code that finds the average of all the negative numbers in
  // a list using a for loop and if-else condition
  void calculateAverageOfAllNegativeNumbers(List nums) {
    nums = nums.where((element) => element < 0).toList();
    int sum = 0;
    for (int num in nums) {
      sum += num;
    }
    print((sum / nums.length).round().toString() +
        " is the sum of all negative numbers in the list");
  }

  calculateAverageOfAllNegativeNumbers([-1, -2, -3, 4, 5, -6, -8]);

  // Write a program that takes a list of integers as input and returns a new
  // list containing only the prime numbers from the original list. Implement
  // the solution using a for loop and logical operations
  // TIP: Use an algorithm to see if a number is prime or not

  void listOfPrimes(List nums) {
    List primes = [];
    for (int num in nums) {
      bool isPrime = true;
      for (int i = 2; i < sqrt(num) + 1; i++) {
        if (num % i == 0) {
          isPrime = false;
          break;
        }
      }
      if (isPrime) {
        primes.add(num);
      }
    }
    print(primes);
  }

  listOfPrimes([1, 3, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15, 29, 31, 32, 33]);
}

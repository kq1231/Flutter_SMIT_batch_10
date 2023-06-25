import 'dart:math';

void main() {
  // Bismillahir-Rahmanir-Rahim

  // Create a list of names and print all names using list
  List<String> names = [
    "Kifayat",
    "Abu Huriarah",
    "Ahmad",
    "Owais",
    "Muhammad"
  ];
  names.forEach((name) {
    print(name);
  });

  // Create an empty list of type string called days.
  // Use the add method to add names of 7 days and print all days.
  List<String> days = [];
  for (String day in ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]) {
    days.add(day);
  }
  days.forEach((element) => print(element));

  // Create a list of Days and remove one by one from the end of list.
  for (var i = 0; i < days.length + i; i++) {
    days.removeLast();
  }
  print(days.length);

  // Create a list of numbers.
  // write a program to get the smallest & greatest number from a list.
  List<int> nums = [
    4015,
    3186,
    1667,
    683,
    2459,
    4941,
    419,
    7218,
    25,
    2145,
    9939,
    6601,
    4541,
    4190
  ];
  nums.sort();
  print("Smallest number is ${nums[0]} and largest is ${nums.last}");

  // Create a map with name, phone keys and store some values to it.
  // Use where to find all keys that have length 4.
  Map<String, String> contacts = {
    'John': '1234567890',
    'Jane': '9876543210',
    'Alice': '5555555555',
    'Bob': '9999',
    'Eve': '1234',
  };
  contacts.keys
      .where((element) => element.length == 4)
      .forEach((element) => print(element));

  // Create Map variable name world
  // then inside it create countries Map, Key will be the name country
  // & country value will have another map having capitalCity, currency and
  // language to it. by using any country key print all the
  // value of Capital & Currency.

  Map<String, Map<String, String>> world = {};

  // Add Islamic countries to the 'world' map
  world["Afghanistan"] = {
    "capitalCity": "Kabul",
    "currency": "Afghan afghani",
    "language": "Pashto, Dari",
  };
  world["Pakistan"] = {
    "capitalCity": "Islamabad",
    "currency": "Pakistani rupee",
    "language": "Urdu",
  };
  world["Saudi Arabia"] = {
    "capitalCity": "Riyadh",
    "currency": "Saudi riyal",
    "language": "Arabic",
  };
  world["Turkey"] = {
    "capitalCity": "Ankara",
    "currency": "Turkish lira",
    "language": "Turkish",
  };

  world.forEach((key, value) {
    print("${value["capitalCity"]} and ${value["currency"]}");
  });

  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };
  // Check if "fri" exist in expenses; if exists, change it's value to 5000.0
  // otherwise add 'fri' to expenses and set its value to 5000.0
  // then print expenses.
  if (expenses.containsKey("fri")) {
    expenses["fri"] = 5000;
  } else {
    expenses["fri"] = 5000;
  }
  print(expenses);

  // remove all false values from below list by using
  // removeWhere or retainWhere property.
  List<Map> usersEligibility = [
    {'name': 'John', 'eligible': true},
    {'name': 'Alice', 'eligible': false},
    {'name': 'Mike', 'eligible': true},
    {'name': 'Sarah', 'eligible': true},
    {'name': 'Tom', 'eligible': false},
  ];

  usersEligibility.removeWhere((element) => element["eligible"] == false);
  print(usersEligibility);

  // Given a list of integers, write dart code
  // that returns the maximum value from the list.
  nums.sort();
  print("Maximum value is ${nums.last}");

  // Write a Dart code that takes in a list of strings and
  // removes any duplicate elements, returning a new list without duplicates.
  // The order of elements in the new list
  // should be the same as in the original list.
  List strings = ["apple", "banana", "cherry", "banana", "apple", "orange"];
  Set uniqueElements = {};
  strings.forEach((element) {
    uniqueElements.add(element);
  });
  print(uniqueElements.toList());

  // Write a Dart function that takes in a list
  // and an integer n as parameters.
  // The function should print a new list containing
  // the first n elements from the original list.
  void slice(List inputList, int n) {
    print(inputList.sublist(0, n));
  }

  slice(["a", "b", "c"], 2);

  // Write a Dart code that takes in a list of strings
  // and prints a new list with the elements in reverse order.
  // The original list should remain unchanged.
  void reverse(List list) {
    List reversed = [];
    for (var i = list.length - 1; i >= 0; i--) {
      print(i);
      reversed.add(list[i]);
    }
    print(reversed);
  }

  reverse([2, 3, 4, 5, 6]);

  // Implement a code that takes in a list of integers and returns a
  // new list containing only the unique elements from the original list.
  // The order of elements in the new list should be the same as in the
  // original list.
  void unique(List list) {
    List uniqueElements = [];
    list.forEach((element) {
      !uniqueElements.contains(element) ? uniqueElements.add(element) : null;
    });
    print(uniqueElements);
  }

  unique([2, 3, 4, 4, 4, 5, 7, 8, 9, 10, 10]);

  // Write a Dart code that takes in a list of integers and
  // prints a new list with the elements sorted in ascending order.
  // The original list should remain unchanged.
  void sortInAscending(List<int> list) {
    List clonedList = [...list];
    clonedList.sort();
    print(clonedList);
  }

  List<int> a = [10, 8, 3, 5, 7];
  sortInAscending(a);
  // Try printing a. It isn't changed.

  // Implement a Dart code that uses the where() method to filter out negative
  // numbers from a list of integers. The program should take in the original
  // list as a parameter and print a new list containing
  // only the positive numbers.
  void filterPositives(List<int> list) {
    List<int> positiveNumbers = list.where((element) => element > 0).toList();
    print(positiveNumbers);
  }

  filterPositives([-1, 4, 5, -9, 10, -20]);

  // Implement a Dart code that uses the where() method to filter
  // out odd numbers from a list of integers.
  // The program should take in the original list as a parameter
  // and print a new list containing only the even numbers.
  void evenNumbers(List<int> list) {
    print(list.where((element) => element % 2 == 0).toList());
  }

  evenNumbers([2, 3, 4, 6, 8, 10, 11]);

  // Given a list of integers, write a Dart code that uses the map() method to
  // create a new list with each value squared. The program should take in the
  // original list as a parameter and print the new list.
  void squared(List<int> list) {
    print(list.map((e) {
      return pow(e, 2);
    }).toList());
  }

  squared([1, 2, 3, 4, 5, 6]);

  // Create a map named "person" with the following key-value pairs:
  // "name" as "John", "age" as 25, "isStudent" as true. Write a Dart code to
  // check if the person is both a student and over 18 years old.
  // Print "Eligible" if both conditions are true,
  // otherwise print "Not eligible".
  Map persons = {
    "John": {"age": 25, "isStudent": true}
  };
  persons.forEach((person, value) {
    (value["age"] > 18 && value["isStudent"] == true)
        ? print("${person} is Eligible")
        : 0;
  });

  // Given a map representing a product with keys "name", "price",
  // and "quantity", write Dart code to check if the product is in stock.
  // If the quantity is greater than 0, print "In stock",
  // otherwise print "Out of stock".
  Map product = {
    "name": "Quran al Kareem - With Tajweed",
    "price": "4000",
    "inStock": true,
    "qty": 40
  };
  (product["qty"] > 0 && product["inStock"] == true)
      ? print("In stock")
      : print("Out of stock");

  // Create a map named "car" with the following key-value pairs:
  // "brand" as "Toyota", "color" as "Red", "isSedan" as true. Write Dart code
  // to check if the car is a sedan and red in color.
  // Print "Match" if both conditions are true, otherwise print "No match".

  Map car = {"brand": "Toyota", "colour": "Red", "isSedan": true};
  car["isSedan"] == true && car["colour"] == "Red"
      ? print("Match")
      : print("No match");

  // Given a map representing a user with keys "name", "isAdmin",
  // and "isActive", write Dart code to check if the user is an active admin.
  // If the user is both an admin and active, print "Active admin",
  // otherwise print "Not an active admin".
  Map user = {"name": "Abu Hurairah", "isAdmin": true, "isActive": false};
  user["isAdmin"] == true && user["isActive"] == true
      ? print("Active admin")
      : print("Not an active admin");

  // Given a map representing a shopping cart with keys as product names
  // and values as quantities, write Dart code to check if a product named
  // "Apple" exists in the cart. Print "Product found" if it exists,
  // otherwise print "Product not found".
  Map cart = {
    "Apple": 40,
    "Banana": 30,
  };
  cart.keys.contains("Apple")
      ? print("Product found")
      : print("Product not found");

  void foo() {}
}

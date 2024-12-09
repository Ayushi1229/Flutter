import 'dart:io';
void main() {
  Map<String, String> phonebook = {};
  while (true) {
    print("1. Add a contact");
    print("2. Search a contact");
    print("3. Display all contacts");
    print("4. Exit");

    print("Enter your choice:");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print("Enter name:");
        String name = stdin.readLineSync()!;
        print("Enter phone number:");
        String phoneNumber = stdin.readLineSync()!;
        phonebook[name] = phoneNumber;
        print("Contact added successfully!");
        break;
      case 2:
        print("Enter name to search:");
        String nameToSearch = stdin.readLineSync()!;
        if (phonebook.containsKey(nameToSearch)) {
          print("Phone number: ${phonebook[nameToSearch]}");
        } else {
          print("Contact not found!");
        }
        break;
      case 3:
        print("Phonebook:");
        phonebook.forEach((name, phoneNumber) {
          print("$name: $phoneNumber");
        });
        break;
      case 4:
        print("Exiting...");
        exit(0);
      default:
        print("Invalid choice!");
    }
  }
}
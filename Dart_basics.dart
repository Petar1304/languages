void main() {
	// String, int, double, bool, dynamic, 
	for (int i = 0; i < 10; i++) { print(i); }

	List nums = [1, 2, 3, 4, 5];
	// can store different data types
	List<int> intNums = [1, 2, 3, 4, 5];
	// can store only integers
	// List operations: .add(), .remove()
	nums.add(6);
	nums.remove(1); 

}
// Arrow function:
String fun(String name) => "hello " + name;

// Classes
class User {
  String username = "Petar";
  int age = 20;
	User(String name, int age) {
    this.username = name;
    this.age = age;
  }
  void login() => print("User Logged in as " + this.username);
}

class SuperUser extends User {
	// takes constructor from User class
	SuperUser(String name, int age) : super(username, age);

	void printsmt() => print(this.username + " you are Super User!");
}


void main() {
	// creating object
  User usr1 = User("Petar", 20);
  usr1.login(); 
	SuperUser usr2 = SuperUser("Petar", 20);
	usr2.printsmt();
}

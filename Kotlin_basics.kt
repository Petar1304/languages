// Data Types:  Int, Double, String, Char
// Input:** var num = readLine()!!.toInt()  // !! for not null input, readline returns string

fun main(args: Array<String>) {
	var arr = arrayOf(1, 2, 3, 4, 5)
	
	for (x in arr) {
		println(x)
	}

	for (i in 'a'..'e') { // or 1..100
		println(i)
	}

}

// function
fun multiply(x: Int, y: Int): Int {
	return x * y
}

// function that doesnt return anything
// Unit = void
fun sayHi(name: String) : Unit {
	println("Hi " + name)
}


// DATA CLASS
data class User(var firstName: String?, var lastName: String?)



// Class
class User {
	var name: String?
	var age: Int? // accepts null value

	// getters and setters
	get() = field
	set(value) {
		field = value
	}
}


// Constructors
open class Person(var name: String, private var age: Int) {
	// or
	constructor(nm: String) {
		name = nm
	}
}


// Inheritance  (class from which we inherit must have open keyword, or be abstract
class Worker: Person {
	
}

/*  Abstract Classes (only for inheritance, can't be created, 
		also all abstract functions must be implemented with override keyword) */
abstract class User(var name: String){
	abstract fun display()
}


// when
val x: Int = 3
when (x) {
    1 -> print("x == 1")
    2 -> print("x == 2")
    else -> {
        print("x is neither 1 nor 2")
    }
}

firstName ?: "Unknown" // returns firstName if its not null and "Unknown" if the first name is null

// Generics
class MyList<T> {
    fun get(pos: Int): T {
        TODO("implement")
    }
    fun addItem(item: T) {}
}
// T can be replaced with any class

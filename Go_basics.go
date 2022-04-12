package main
import ("fmt")


type Person struct {
  name string
  age int
}

func myFunction(name string, age int) int {
	 return age + 10
}

int main() {
	var variable int = 5
	var x = 4
	y := "Hello"
	const cons float32 3.14
	
	var array_name = [length]datatype{values} // here length is defined
	var array_name = [...]datatype{values} // here length is inferred

	var a = map[string]string{"brand": "Ford", "model": "Mustang", "year": "1964"}
  b := map[string]int{"Oslo": 1, "Bergen": 2, "Trondheim": 3, "Stavanger": 4}

	for i:=0; i <= 100; i+=10 {
    fmt.Println(i)
  }

	fruits := [3]string{"apple", "orange", "banana"}
  for i, val := range fruits {
     fmt.Printf("%v\t%v\n", i, val)
  }
}

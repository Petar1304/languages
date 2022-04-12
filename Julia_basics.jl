
s1 = "Hello"
s2 = "World"
s3 = s1 * s2 # s1 + s2 = error

# println(s3)

#=
    tuples
    dictionaries
    arrays
=#

one_tuple = ("penguins", "leafs", "habs")

dict = Dict("ime" => "Petar", "broj" => 2001, "stanje" => 100.50)

dict["language"] = "c++"
pop!(dict, "language)

my_array = ["Marija", "Mateja", "Petar", "Pavle", "Ognjen"]

push!(my_array, "Marko")
push!(my_array, "Lela")
var = pop!(my_array)

# println(my_array)
# println("Popped: $var")

# rand(2, 3)

A = fill(0, (5, 5))
println(A)

for i in 1:5
    for j in 1:5
        A[i, j] = i + j
    end
end

# for i in 1:5, j in 1:5
#     A[i, j] = i + j
# end

println(A)

# function
function hello(name) 
    println("Hello $name")
end

# lambda function
lambda_function = name -> println("Hi $name")

# mutationg functions end with ! (sort!())
# nonmutating functions end without ! (sort())

v = [2, 3, 1]
# println(sort!(v))
# println(v)

# broadcast(func, elements) = func.elements
# or func.elements

# using Pkg
# Pkg.add("name_of_the_package")
# using name_of_the_package

# Ruby Tutorial

## Inheritance.
Ruby provides Inheritance and does not support multiple Inheritance.
Classes inherit from "Object" which provides basic functionalities like "clone" and all.
But, like it provides alternative to multiple inheritance with "Modules".
Object is a child of "BasicObject" which is an empty shell class.
Inheritance is for reusing functionality, not enforcing interfaces

## Class Methods
Class Methods are more like static methods. They run independent of instances. Unlike java though, a class method cannot be invoked on an instance, but can only be invoked on class
Prefix method name with "self."

## Class Variables
Class variable is more of a static variable.
its defined with "@@"
Class variables are shared among all subclasses and all objects. They are less famous.

#Class Instance Variables.
Its declared like a regular variable, but when used inside a class method, they become class instance variables.

#Method Visibility.
Private:
By default all methods are public.
You can make it either private or protected.
Private methods in Ruby can be invoked from SubClasses.

They proper way to make a method private is
prepend each method name with "private_class_method"
Protected:
means, allow access for other objects of the same class

#Executable Class Bodies
#Monkey Patching.
A class can be reopned after its code.
Its helpful to add functionality to third party code
#Equality

#Conditional.
Ruby has unless that can be used for negation.
i.e.: if not condition is equivalent to unless condition.
launch unless fuel_level <25
Ternary operator exists in Ruby as well. ?:.
- Like +=, Ruby also supports Conditional Initialization. i.e. ||= and &&=.
~ ship ||= Spaceship.new
-meaning, if ship is empty or null, create a new object and assign. Only caveat is that it wont work for boolean values.
## Block.
Block is a piece of code that can be passed into methods that take block as an argument.
Two ways to define it.
1. Multiline block is defined by putting it between 'do','end' keywords
2. Single line block is defined by putting it between Curley braces.
This is famously sent to 'each' methods in loops,Arrays.
For instance:
 ships = Spaceship.all
 ships.each {|ship| puts ship.name}
or
  10.upto(20){|i| puts i}

Arguments can also be passed into a block by specifying it between vertical bars.


#Types.
#Boolean
Ruby does not have Boolean type.
true is an instance of TrueClass
false is an instance of FalseClass
They are singleton instances.
Both TrueClass and FlaseClass are subclasses of Object. So some handy methods of Object can be used on true and false.
#Integers
There are two types of integers.
    Integer
      /\
Fixnum  Bignum
Range of integers represendted by Fixnum is limited by size of machine word size.
Bignum is limited by the available memory.
Conversion between these two types of integers is managed by Ruby automatically.
_ is used to seperate groups of digits to make reading easy.
100_000_456 = 100000456. Ruby ignores _

## Strings
Ruby supports Heredoc strings
message = <<EOS
  There;s no place I can
  be.?
EOS

Using this way, preserves spaces,Indentation, special characters and so on.

Square brackets can be used to do multiple functions.
"Hello World"[1] -> e
"Hello World"[1,3] -> ell
"Hello World"["or"] -> or (Finds substring)
"ha " * 3 -> "ha ha ha "

## Symbols.
Symbols are special kind of objects.Think of them as Mix between constant and a string.  Other langs use enums in place of them.
Each symbol is an instance of class Symbol.
They are created by laterals as follows
:"abc"
:"3"

Ruby ensures that they are globally unique and immutable. First time you use the symbol an object is created. Same obj used in subsequent calls.
They work great as hash keys as follows.

## Arrays.
Array.new(3) -> [nil, nil, nil]
Array.new(3,true) -> [true,true,true]
Array.new(3){"abc"} -> ["abc","abc","abc"]
Array.new(3){Array.new(3)} -> [[nil, nil, nil],[nil, nil, nil],[nil, nil, nil]]
arr[-number] is used to navigate from back of array.

## Enumarable
Is a module that has has more than 50 handy functions. It is more like a collections api in Java.
-like Map to transform each element of a collection
  [1,2,3].map{|v| v*10} -> [10,20,30]
-Reduce
  [1,2,3].reduce(0) {|sum,v| sum +v} -> 6
-other include
  sort, select, etc..

## Hashes
Is a ordered collection of Key, value pairs.
They are of type "Hash". They can be thought of as arrays, with index being customizable instead of numbers.
The following
-is an empty Hash
  h = {}
- is a hash with "min", "max" keys and 0, 100 values.
h = {"min" => 0, "max" => 100}
- Since, it's very common to use Symbols as keys in hashes, the following is a shortcut for it.
h = {min: 0, max: 0}
-when a non existing key is used to retrieve it returns nil.
h[:avg] -> nil
-The default value can be configured during declaration.
h = Hash.new(0)
h[:a] -> 0
-Hashe class also has enumerable module in it, so all enumerable functions can be used on hashes. Except they now operate over both key and values.

## Range
1..5  #[1,5] two dots indicate an inclusive range with upper boundary included
1...5 #[1,5) three dots indicate an exclusive range with upper boundary not included
Sample methods
(1..10).class -> Range
(1..10).begin -> 1
(1..10).end -> 10
(1..10).include!(11) -> false
- Enumeration functions can also be used on ranges.
(1..10).map {|v| v*2} -> [2,4,6,8,10,12,14,16,17,18, 20]

## Parallel Assignments and Splat operator
a, b = 1, 2 means a = 1, b = 2
a = 1,2,3,4 means a = [1,2,3,4] creates an arrary.
They above line is handy when method returns multiple values as follows.
ex:
def get_values
  [1,2,3,4]
end
a, b = get_values means a = 1, b = 2 and 3, 4 are discarded.
- Splat operator is represented by *
a, *b = get_values means a = 1, b = [2,3,4]
a, *b, c = get_values means a =1 , b = [2,3], c = 4

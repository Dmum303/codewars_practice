Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

For example (Input --> Output):

39 --> 3 (because 3*9 = 27, 2*7 = 14, 1*4 = 4 and 4 has only one digit)
999 --> 4 (because 9*9*9 = 729, 7*2*9 = 126, 1*2*6 = 12, and finally 1*2 = 2)
4 --> 0 (because 4 is already a one-digit number)

---

The Cat In The Hat has cat A under his hat, cat A has cat B under his hat and so on until Z

The Cat In The Hat is 2,000,000 cat units tall.

Each cat is 2.5 times bigger than the cat underneath their hat.

Find the total height of the cats if they are standing on top of one another.

Counting starts from the Cat In The Hat

n = the number of cats

fix to 3 decimal places.

I need to iterate through n and each time make the height 2.5 times smaller, have a total height counter which adds each height up and return that number as a string fixed to three .000
So have starting value of store += h, h / 2.5

---

Are the twins even?

Task
Given an array of up to 100 numbers ranging from 1 to 1000, determine how many distinct even sums can be obtained by combinations of 2 different elements ( i.e. different indices, not necessarily different numbers ).

Assume you will always have at least 2 numbers.

Example
array: [5, 6, 7, 8, 9]

combinations of 2 numbers:
[5, 6], [5, 7], [5, 8], [5, 9], [6, 7], [6, 8], [6, 9], [7, 8], [7, 9], [8, 9]
sum: 11 12 13 14 13 14 15 15 16 17

list of distinct even sums: 12, 14, 16
number of distinct even sums: 3

So need something to iterate through the list of numbers and then that interation has a nested list of same numbers and iterates through that - ignoring first index of the 2nd array. Will also need to stop before last number. This needs to pop the pairs into another array and then make sure is unique

---

Dot Calculator
You have to write a calculator that receives strings for input. The dots will represent the number in the equation. There will be dots on one side, an operator, and dots again after the operator. The dots and the operator will be separated by one space.

Here are the following valid operators :

- Addition

* Subtraction

- Multiplication
  // Integer Division
  Your Work (Task)
  You'll have to return a string that contains dots, as many the equation returns. If the result is 0, return the empty string. When it comes to subtraction, the first number will always be greater than or equal to the second number.

Examples (Input => Output)

- "..... + ..............." => "...................."
- "..... - ..." => ".."
- "..... - ." => "...."
- "..... \* ..." => "..............."
- "..... \* .." => ".........."
- "..... // .." => ".."
- "..... // ." => "....."
- ". // .." => ""
- ".. - .." => ""

##### Leap years

A simple tool that will tell you whether a year is a leap year, according to the following rules:

All years divisible by 400 ARE leap years (e.g. 2000 was a leap year)
All years divisible by 100 but not by 400 are NOT leap years (e.g. 1700, 1800 and 1900 were not leap years)
All years divisible by 4 and not by 100 ARE leap years (e.g. 2004, 2008 and 2012 were leap years)
All years not divisible by 4 are NOT leap years (e.g. 2009, 2010 and 2011 were not leap years)
Acceptance Criteria
2.4.1 :001 > require './lib/leap_years.rb'
=> true
2.4.1 :002 > leap_year?(2000)
=> true
2.4.1 :003 > leap_year?(1970)
=> false
2.4.1 :004 > leap_year?(1900)
=> false
2.4.1 :005 > leap_year?(1988)
=> true
2.4.1 :006 > leap_year?(1500)
=> false
Extension Options
Write a program that takes a start year and an end year and returns an array of all the leap years between.

Write a program that when given a year, will return the closest leap year (this could be before or after the given year)

##### Get the Middle Letter(s)

Requirements
The program runs in a REPL like irb or in a browser console.

It's fine to use Ruby or JavaScript.

Your job is to return the middle letter of a word. If the word's length is odd, return the middle letter. If the word's length is even, return the middle 2 letters.

Acceptance Criteria
get_middle("test") # => "es"
get_middle("testing") # => "t"
get_middle("middle") # => "dd"
get_middle("A") # => "A"
get_middle("of") # => "of"

##### Take a ten minute walk

Create a function that will return true if the walk will take you exactly ten minutes and will return you to your starting point.

Requirements
You are meeting a friend in New York City, where all roads are laid out in a perfect grid. You arrived ten minutes too early to the appointment, so you decided to take the opportunity to go for a short walk.
The city provides its tourists with a Walk Generating App on their phones -- every time you press the button it sends you an array of one-letter strings representing directions to walk. e.g. ['n', 's', 'w', 'e']

You always walk one block at a time in a direction and you know it takes you one minute to traverse one city block, so create a function that will return true if the walk the app gives you will take you exactly ten minutes (you don't want to be early or late!) and will, of course, return you to your starting point. Return false otherwise.

Note: you will always receive a valid array containing a random assortment of direction letters ('n', 's', 'e', or 'w' only). It will never give you an empty array (that's not a walk, that's standing still!).

Acceptance Criteria
ten_minute_walk?(['w', 's', 'e', 'e', 'n', 'n', 'e', 's', 'w', 'w']) # => true
ten_minute_walk?(['w', 's', 'e', 'n', 'n', 'e', 's', 'w', 'w', 'w']) # => false
ten_minute_walk?(['w', 's', 'e', 's', 's', 'e', 's', 'w', 'n', 'n']) # => false
ten_minute_walk?(['w', 's']) # => false

---

### Scrabble

Requirements
Given a word, compute the scrabble score for that word.

Letter Values
You'll need these:

| Letter                       | Value |
| ---------------------------- | ----- |
| A, E, I, O, U, L, N, R, S, T | 1     |
| D, G                         | 2     |
| B, C, M, P                   | 3     |
| F, H, V, W, Y                | 4     |
| K                            | 5     |
| J, X                         | 8     |
| Q, Z                         | 10    |

Examples "cabbage" should be scored as worth 14 points:

3 points for C
1 point for A, twice
3 points for B, twice
2 points for G
1 point for E
And to total:

3 + 2×1 + 2×3 + 2 + 1

= 3 + 2 + 6 + 3

= 14

Acceptance Criteria
scrabble = Scrabble.new('')
scrabble.score # => 0

scrabble = Scrabble.new(" \t\n")
scrabble.score # => 0

scrabble = Scrabble.new(nil)
scrabble.score # => 0

scrabble = Scrabble.new('a')
scrabble.score # => 1

scrabble = Scrabble.new('f')
scrabble.score # => 4

scrabble = Scrabble.new('street')
scrabble.score # => 6

scrabble = Scrabble.new('quirky')
scrabble.score # => 22

scrabble = Scrabble.new('OXYPHENBUTAZONE')
scrabble.score # => 41

### Checkout

The purpose of this challenge is to implement a supermarket checkout that calculates the total price of a number of items - to be run in a REPL like IRB. Don't worry about I/O.

Requirements
In a normal supermarket, things are identified using Stock Keeping Units, or SKUs. In our store, we'll use individual letters of the alphabet (A, B, C, and so on). Our goods are priced individually. In addition, some items are multi-priced: buy n of them, and they'll cost you y pounds.

For example, item A might cost 50 pounds individually, but this week we have a special offer:

buy three As and they'll cost you 130.
Our price table and offers:

| Item | Price | Special offers |
| ---- | ----- | -------------- |
| A    | 50    | 3A for 130     |
| B    | 30    | 2B for 45      |
| C    | 20    |                |
| D    | 15    |                |

Notes:

For any illegal input (non capitals) simply return -1
In order to complete the round you need to implement the following method: checkout(String) -> Integer

Where:

param[0] = e.g. 'AAB', a String containing the SKUs of all the products in the basket
@return = e.g. 120, an Integer representing the total checkout value of the items

- Acceptance Criteria
- shop.checkout('aBc') # => -1
- shop.checkout('aBc') # => -1
- shop.checkout('-B8x') # => -1
- shop.checkout(18) # => -1
- shop.checkout('AA') # => 100
- shop.checkout('ABCD') # => 115
- shop.checkout('AAA') # => 130
- shop.checkout('AAAAAA') # => 260

# Reverse words

DESCRIPTION:
Complete the function that accepts a string parameter, and reverses each word in the string. All spaces in the string should be retained.

Examples
"This is an example!" ==> "sihT si na !elpmaxe"
"double spaces" ==> "elbuod secaps"

# Human readable duration format

Your task in order to complete this Kata is to write a function which formats a duration, given as a number of seconds, in a human-friendly way.

The function must accept a non-negative integer. If it is zero, it just returns "now". Otherwise, the duration is expressed as a combination of years, days, hours, minutes and seconds.

It is much easier to understand with an example:

- For seconds = 62, your function should return
  "1 minute and 2 seconds"
- For seconds = 3662, your function should return
  "1 hour, 1 minute and 2 seconds"
  For the purpose of this Kata, a year is 365 days and a day is 24 hours.

Note that spaces are important.

Detailed rules
The resulting expression is made of components like 4 seconds, 1 year, etc. In general, a positive integer and one of the valid units of time, separated by a space. The unit of time is used in plural if the integer is greater than 1.

The components are separated by a comma and a space (", "). Except the last component, which is separated by " and ", just like it would be written in English.

A more significant units of time will occur before than a least significant one. Therefore, 1 second and 1 year is not correct, but 1 year and 1 second is.

Different components have different unit of times. So there is not repeated units like in 5 seconds and 1 second.

A component will not appear at all if its value happens to be zero. Hence, 1 minute and 0 seconds is not valid, but it should be just 1 minute.

A unit of time must be used "as much as possible". It means that the function should not return 61 seconds, but 1 minute and 1 second instead. Formally, the duration specified by of a component must not be greater than any valid more significant unit of time.

# Change Converter

Given a number in pounds and pence, work out the most efficient way of breaking it down into notes and coins, e.g. 11.55 becomes ["£10", "£1", "50p", "5p"]

Acceptance Criteria
change_generator.convert(6.42)
=> ["£5", "£1", "20p", "20p", "2p"]
change_generator.convert(40)
=> ["£20", "£20"]
change_generator.convert(16.30)
=> ["£10", "£5", "£1", "20p", "10p"]
change_generator.convert(19.99)
=> ["£10", "£5", "£2", "£2", "50p", "20p", "20p", "5p", "2p", "2p"]
change_generator.convert(76.81)
=> ["£50", "£20", "£5", "£1", "50p", "20p", "10p", "1p"]
Extension Options
Write a program that takes an array of note and coin values and returns the result of summing these amounts, in £00.00 format.

Write a change generator for a different currency e.g. USD.

Turn you change converter into a cash machine, but pre-loading it with notes and change. Keep track of how much money it has dispensed, and notify the user when it runs out.

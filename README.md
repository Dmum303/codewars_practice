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

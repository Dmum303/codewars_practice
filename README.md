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

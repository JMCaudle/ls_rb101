PEDAC Template
============

Write a method that takes a positive integer as an argument and returns that number with its digits reversed. Examples:

```
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1
```
Don't worry about arguments with leading zeros - Ruby sees those as octal numbers, which will cause confusing results. For similar reasons, the return value for our fourth example doesn't have any leading zeros.

(Understand the) Problem
------------------------

* Inputs: a positive integer without leading `0`s
* Output: an integer with all the digits reversed, again without leading `0`s

---

**Problem Domain:**

Primitive data type integer, the String class, and how to convert values from one to the other.

---

**Implicit Requirements:**

Seems to be suggesting I should remove leading `0`s myself, unless `String::to_i()` does it for me.

---

**Clarifying Questions:**

1.
2.
3.

---

**Mental Model:**
Given an input int, turn the int into a string.  Use a method to reverse the string.  If necessary, trim leading `0`s.  Turn the modified string back into an int, and return the int.

---

Examples / Test Cases / Edge Cases
----------------------------------

```
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1
```

---

Data Structure
--------------
Primitives and Strings

---

Algorithm
---------

Pseudocode
----
```
# Given integer INT
STRING = INT.TO_STRING()
STRING.REVERSE()
# If needed, trim leading 0s here
RETURN STRING.TO_INT()
```

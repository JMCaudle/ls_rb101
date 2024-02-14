PEDAC Template
============

Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.
```
# All test cases should return true
puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby
```

(Understand the) Problem
------------------------

* Inputs: A number.  The examples all use ints
* Output: A number, negative, with the same absolute value as the input

---

**Problem Domain:**

Mathematics

---

**Implicit Requirements:**

NA

---

**Clarifying Questions:**

1. Should we accomodate floats?
2.
3.

---

**Mental Model:**

A method that returns the input argument `num` if `num <= 0`, else return `-num`

---

Examples / Test Cases / Edge Cases
----------------------------------

```
# All test cases should return true
puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby
```

---

Data Structure
--------------

---

Algorithm
---------

Pseudocode
----
```
# given input argument NUM
IF NUM <= 0
  RETURN NUM
ELSE
  RETURN -NUM
```


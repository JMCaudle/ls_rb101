PEDAC Template
============

Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

```
Teddy is 69 years old!
```

(Understand the) Problem
------------------------

* Inputs: none
* Output: a string containing an interpolated pseudo-randomly generated number

---

**Problem Domain:**

Class String, and random numbers

---

**Implicit Requirements:**

---

**Clarifying Questions:**

1. Is the range of 20 to 200 inclusive or exclusive?
2.
3.

---

**Mental Model:**

Use ruby's built in prng (probably in module Kernel) to generate a number betwen 20 and 200.  Interpolate that number into a string about Teddy's age.

---

Examples / Test Cases / Edge Cases
----------------------------------

```
Teddy is 69 years old!
```

---

Data Structure
--------------

Strings and data primitives

---

Algorithm
---------

Pseudocode
----
```
NUM = RAND(20, 200)
PRINT "Teddy is {NUM} years old!"
```


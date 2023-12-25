PEDAC Template
============

Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

(Understand the) Problem
------------------------

* Inputs: A non-empty string
* Output: A string composed of 1 or 2 chars, from the middle of the iput string

---

**Problem Domain:**

CLass String, the concept of middle

---

**Implicit Requirements:**

---

**Clarifying Questions:**

1.
2.
3.

---

**Mental Model:**

Given the input string.
Get the string's length.
If the length is odd return string[length / 2]
If even return string[(length / 2) - 1] string[length / 2]

---

Examples / Test Cases / Edge Cases
----------------------------------

```
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'
```

---

Data Structure
--------------

Strings

---

Algorithm
---------

Pseudocode
----
```
# Given input string STR
LENGTH = STR.LENGTH()
IF LENGTH.ODD?
  RETURN STR[LENGTH / 2]
ELSE
  RETURN STR[((LENGTH / 2) - 1)..(LENGTH / 2)]
```

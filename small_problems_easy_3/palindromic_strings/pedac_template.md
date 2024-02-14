PEDAC Template
============

Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

(Understand the) Problem
------------------------

* Inputs: A string
* Output: A bool

---

**Problem Domain:**

The concept of palindromes

---

**Implicit Requirements:**

---

**Clarifying Questions:**

1.
2.
3.

---

**Mental Model:**

Given the string, create a copy in reversed order, compare if the reversed string is equivilant to the original string.

---

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

```
palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true
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
# Given input string STRING
REV_STRING = STRING.REVERSE()
IF STRING == REV_STRING
  RETURN TRUE
RETURN FALSE
```


PEDAC Template
============

Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. Characters that are not alphabetic should be ignored.

```
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true
```

(Understand the) Problem
------------------------

* Inputs: A string
* Output: A boolean

---

**Problem Domain:**

Strings and font casings

---

**Implicit Requirements:**

If there are no alphabetic characters in the string, it should automatically return `true`

---

**Clarifying Questions:**

1.
2.
3.

---

**Mental Model:**

Given the input string, make a copy of the string with all non alphabetic characters removed.  Make another copy of this new string with all characters converted to uppercase.  If both of the alphabetic strings are equivilant, the original string has all uppercase alphabetic characters (return true), else return false.

---

Examples / Test Cases / Edge Cases
----------------------------------

```
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true
```

---

Data Structure
--------------

A string

---

Algorithm
---------

Pseudocode
----
```
# Given input string STRING
ALPHA_STRING = STRING.DELETE(^'a-zA-Z')
RETURN ALPHA_STRING == ALPHA_STRING.UPCASE
```

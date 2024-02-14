PEDAC Template
============

Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

(Understand the) Problem
------------------------

* Inputs: A string, entered by the user
* Output: A new string, telling the user how many non-space characters were in the original string.

---

**Problem Domain:**

Data primitives

---

**Implicit Requirements:**

---

**Clarifying Questions:**

1.
2.
3.

---

**Mental Model:**

Given the input string `string`. Use `string.length() - string.count(" ")` to get the number of non_space characters in `string`

---

Examples / Test Cases / Edge Cases
----------------------------------

```
Please write word or multiple words: walk
There are 4 characters in "walk".

Please write word or multiple words: walk, don't run
There are 13 characters in "walk, don't run".
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
STRING = GET_STRING()
NUM_CHARS = STRING.LENGTH() - STRING.COUNT(" ")
PRINT "There are {NUM_CHARS} characters in \"{STRING}\"."
```


PEDAC Template
============

Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.
```
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].
```

(Understand the) Problem
------------------------

* Inputs: 6 numbers
* Output: A string declaring whether the last number appeared among the first 5 numbers

---

**Problem Domain:**

Numbers

---

**Implicit Requirements:**

---

**Clarifying Questions:**

1.
2.
3.

---

**Mental Model:**

Use a loop to iterate 6 times, prompting the user to input a number each time, and storing the numbers in an array.  Pop the last value off the array, and check whether that value is represented amongst the 5 remaining elements of the array.  Display a string containing the results.

---

Examples / Test Cases / Edge Cases
----------------------------------

```
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].
```

---

Data Structure
--------------

An array.

---

Algorithm
---------

Pseudocode
----

```
WORDS = ["1st", "2nd", "3rd", "4th", "5th", "last"]
NUMBERS = []
FOR N IN (0..5)
  PRINT "Enter the {WORDS[N]} number:"
  NUMBERS.PUSH(GET_STRING())
LAST = NUMBERS.POP()
ANSWER_PHRASE = NUMBERS.CONTAINS?(LAST) ? "appears" : "does not appear"
PRINT "The number {LAST} {ANSWER_PHRASE} in {NUMBERS}."
```


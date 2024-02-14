PEDAC Template
============

Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

(Understand the) Problem
------------------------

* Inputs: NA
* Output: A series of calls to STDOUT printing the odd values from 1 to 99, each on a new line

---

**Problem Domain:**

The concepts off odd, inclusive ranges, and displaying to the console

---

**Implicit Requirements:**

---

**Clarifying Questions:**

1.
2.
3.

---

**Mental Model:**

Create an array consisting of the desired odd values.  Use puts to display the values in the required format.

---

Examples / Test Cases / Edge Cases
----------------------------------


---

Data Structure
--------------

An array.  Probably formed from Kernel.Array(Range).

---

Algorithm
---------

Pseudocode
----

```
ARR = ARRAY(0..48)
ARR = ARR.MAP {val * 2 + 1}
PUTS ARR
```

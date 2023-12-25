PEDAC Template
============

Write a method that takes a positive integer, `n`, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

(Understand the) Problem
------------------------

* Inputs:  A positve integer
* Output:  A series of calls to STDOUT

---

**Problem Domain:**

Data primitives and using module Kernel to output to STDOUT

---

**Implicit Requirements:**

An empty line before the triangle starts displaying

---

**Clarifying Questions:**

1.  Should we still place the empty line if `n =  0`?
2.  Should we account for edge cases of overly large `n`? (ie. `n > 80`)
3.

---

**Mental Model:**

A method given the input `n` that will iterate `n + 1` times.
The first iteration will display `n` blank spaces (' ').
Each subsequent iteration will remove a ' ' from the front and append an asterisk ('*') to the end of the string, then display it.  The final iteration will therefore display 0 ' ' and `n` '\*'.

---

Examples / Test Cases / Edge Cases
----------------------------------

```
triangle(5)

    *
   **
  ***
 ****
*****
```

---

Data Structure
--------------

Data Primitives, a string, and looping control expressions.

---

Algorithm
---------

Pseudocode
----

```
#Given an input N
IF (N > 80)
  N = 80
STRING = ' ' * N
ITERATOR = 0
WHILE (ITERATOR <= N)
  DISPLAY STRING
  UNSHIFT STRING
  STRING.PUSH('*')
  ITERATOR += 1
```


PEDAC Template
============

(Understand the) Problem
------------------------

* Inputs:
  * An integer, in this case 42
* Output:
  * A boolean value expressing whether the given int is between 10 and 100

---

**Problem Domain:**

Performing comparisons between primitive data types.  Using Ruby's Range class, and presumably therefore Range#include?

---

**Implicit Requirements:**

---

**Clarifying Questions:**

1.  Should the method use an inclusive range, or an exclusive range (ie. would 100 be in range?)
2.
3.

---

**Mental Model:**
A method that takes an integer as a parameter.
Define a range from 10 to 100
If the input integer falls within that range, return true.
Else, return false.

---

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

* Example 1
  * Inputs: 42
  * Output: true
* Example 2
  * Inputs: 5
  * Output: false

---

_Your Test Cases:_

* Example 3
  * Inputs: 50
  * Output: true

---

_Your Edge Cases:_

* Example 4
  * Inputs: 100
  * Output: true

---

Data Structure
--------------

Using primitive data types and the Range class.

---

Algorithm
---------
* Given input integer `int`
* Return Range(10, 100) includes? `int`

Pseudocode
----


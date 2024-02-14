PEDAC Template
============

The || operator returns a truthy value if either or both of its operands are truthy. If both operands are falsey, it returns a falsey value. The && operator returns a truthy value if both of its operands are truthy, and a falsey value if either operand is falsey. This works great until you need only one of two conditions to be truthy, the so-called exclusive or.

In this exercise, you will write a method named xor that takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise. Note that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&.

(Understand the) Problem
------------------------

* Inputs: 2 arguments, bools or otherwise, that will be evaluated for "truthiness"
* Output: A bool expressing the value of an XOR operation on the truthiness of the input arguments

---

**Problem Domain:**

Logic and data primitives, especially as used in Ruby.

---

**Implicit Requirements:**

---

**Clarifying Questions:**

1.
2.
3.

---

**Mental Model:**

a XOR b = (a OR b) AND NOT(a AND b)

---

Examples / Test Cases / Edge Cases
----------------------------------
```
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false
```
---

Data Structure
--------------

data primitives

---

Algorithm
---------

Pseudocode
----

`a XOR b = (a OR b) AND NOT(a AND b)`

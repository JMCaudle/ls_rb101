PEDAC Template
============

(Understand the) Problem
------------------------

* Inputs:
  * One positive integer int
* Output:
  * One string of int length composed of alternating '1's and '0's, starting with '1'
---

**Problem Domain:**

Creating and manipulating primitive data types, in this case integers and strings

---

**Implicit Requirements:**

---

**Clarifying Questions:**

1.  Presumably a call of `stringy(0)` should return an empty string?
2.
3.

---

**Mental Model:**

* Given an input int.
* Create an empty string.
* Iterate int times, alternatively appending '1' or '0' to the string.
* Return the string.

---

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

```
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy 0 == ''
```

---

Data Structure
--------------
* Primitive data types int and char
* Strings which are effectively arrays with elements of type char

---

Algorithm
---------
* Given positive integer `int`
* Create empty string `str`
* Iterate `int` times
  * Use current iteration number to append either `'1'` or `'0'`
* Return `str`

Pseudocode
----
```
# given input int
str = ''
iterate i from 1 to int
  if i is odd
    str += '1'
  else
    str += '0'
return str

```


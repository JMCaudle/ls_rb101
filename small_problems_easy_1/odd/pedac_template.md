PEDAC Template
============

(Understand the) Problem
------------------------

* Inputs:
  * A signed integer
* Output:
  * A boolean value expressing whether the absolute
  value of the given integer is odd

---

**Problem Domain:**

Basic Arithemetic invloving concepts such as Absolute Value and odd/even.  
Any question of how to handle negative modulo is removed by the fact that the dividend is an absoulte value (always positive). And the divisor is explicitly defined to be positive 2

---

**Implicit Requirements:**

---

**Clarifying Questions:**

1. Should we validate input (**no**)
2. Should I re-implement Math.abs (probably not)
3.

---

**Mental Model:**
A method that will use abolute value to strip the sign from the int passed as an argument.  With the now "unsigned" int use a mod2 operation to determine even/odd

---

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

```  
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
```
---



Data Structure
--------------
Using primitive data types int and bool.

---

Algorithm
---------
* Perform Absolute Value operation on int
* If int is not evenly divisible by 2 return `true`
* Otherwise return `false`

Code
----
```
# given input num
abs_num = absolute_value(num)
if abs_num % 2 == 1
  return true
else
  return false
```

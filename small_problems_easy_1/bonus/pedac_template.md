PEDAC Template
============
> Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.
(Understand the) Problem
------------------------

* Inputs: a positive integer (salary) and a boolean (qualifies_for_bonus)
* Output: an integer (bonus)

---

**Problem Domain:**

An understanding of primitive data types and the concept of a "bonus"

---

**Implicit Requirements:**

NA

---

**Clarifying Questions:**

1.
2.
3.

---

**Mental Model:**

Create a method with 2 parameters, an int and a bool.  Use the bool to determine if the bonus should be 0 or half the salary.  Return the appropriate bonus.

---

Examples / Test Cases / Edge Cases
----------------------------------

```ruby
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
```

---

Data Structure
--------------
primitive data types
---

Algorithm
---------

Pseudocode
----
```
# Given parameters SALARY and BONUS?
if BONUS?
  RETURN SALARY / 2
else
  RETURN 0
```

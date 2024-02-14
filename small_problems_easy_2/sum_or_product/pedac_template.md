PEDAC Template
============

Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.
```
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
```

(Understand the) Problem
------------------------

* Inputs: 
  * An integer, prompted from the user.
  * A selection of the sum or product operator
* Output:
  * A string displaying the results of the operation

---

**Problem Domain:**

Arithmetic

---

**Implicit Requirements:**

Some amount of input validation.

---

**Clarifying Questions:**

1. Should we account for integer overflow?
2.
3.

---

**Mental Model:**

Get and validate the integer from the user, then get and validate the operator. Perform the operator to the series of Integers from 1 to the input int.  Output the result.

---

Examples / Test Cases / Edge Cases
----------------------------------

```
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
```

---

Data Structure
--------------

Data primitives

---

Algorithm
---------

Pseudocode
----

```
INT = GET_VALID_INT()
OPR = GET_VALID_OPERATOR()
RESULT = 0
IF OPR == 's'
  (1..INT).EACH { RESULT += VAL }
ELSE
  RESULT = 1
  (1..INT).EACH { RESULT *= VAL }
PRINT "The {OPR} of the integers between 1 and {INT} is {RESULT}
```


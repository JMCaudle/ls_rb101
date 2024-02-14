PEDAC Template
============

Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.
```
==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103
```

(Understand the) Problem
------------------------

* Inputs: Two numeric operands (integers)
* Output: A series of strings displaying the results of performing various operators on the given operands

---

**Problem Domain:**

Arithmetic operators.

---

**Implicit Requirements:**

The problem description says not to worry about input validation, but obviously some sort of provision should be made for divide-by-zero errors.  Also the exponential operation might easily run past the integer limit

---

**Clarifying Questions:**

1. How will modulo work with floats? The documentation only makes clear that it does work, not necessarily in what way.
2.
3.

---

**Mental Model:**

Prompt the user for the two operands.  Perform and display the operations, ideally using symbols and Array#inject to both perform the operation and display the results.

---

Examples / Test Cases / Edge Cases
----------------------------------

```
==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103
```

---

Data Structure
--------------

An array, holding the operands.

---

Algorithm
---------

Pseudocode
----

```
OPS = [:+, :-, :*, :/, :%, :**]
SUB_PROCESS PROMPT(STRING)
  PRINT "==> {STRING}"
END

PROMPT("Enter the first number:")
NUM1 = GET_STRING().TO_INT()

PROMPT("Enter the second number:")
NUM2 = GET_STRING().TO_INT()

OPS.EACH { |OP|
  PROMPT("{NUM1} {OP} {NUM2} = {NUM1.SEND(OP, NUM2)}")
  ERROR_HANDLING(DIVIDE_BY_ZERO)
}

```


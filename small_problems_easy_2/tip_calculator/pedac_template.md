PEDAC Template
============

Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

(Understand the) Problem
------------------------

* Inputs: Two floats, the bill and the tip percentage.
* Output: Two floats, the tip and the total

---

**Problem Domain:**

Restaurant gratuity

---

**Implicit Requirements:**

---

**Clarifying Questions:**

1.
2.
3.

---

**Mental Model:**

Prompt user for bill and desired tip percentage.  Use arithmetic to compute the corresponding tip, and add that tip to the bill to compute a total.

---

Examples / Test Cases / Edge Cases
----------------------------------

```
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0
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
PRINT "What is the bill? "
BILL = GET_FLOAT()
PRINT "What is the tip percentage? "
PERCENT = GET_FLOAT()

TIP = (PERCENT / 100) * BILL
TOTAL = BILL + TIP
PRINT "The tip is ${TIP}"
PRINT " The total is ${TOTAL}"
```

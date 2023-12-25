PEDAC Template
============

Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

```
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).
```

(Understand the) Problem
------------------------

* Inputs: 2 floats input by the user
* Output:  A string containing the interpolation of a float representing the multiple of the floats entered as input

---

**Problem Domain:**

Area, Dimensions, and Imperial vs Metric measurements

---

**Implicit Requirements:**

---

**Clarifying Questions:**

1.
2.
3.

---

**Mental Model:**

Prompt the user for length, prompt the user for width.  Multiply the 2 values to get area in square meters, then convert to square feet.  Display both values in an explanatory string.

---

Examples / Test Cases / Edge Cases
----------------------------------

```
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).
```

---

Data Structure
--------------

Data primitives.

---

Algorithm
---------

Pseudocode
----

```
SUB_PROCESS GET_FLOAT()
  LOOP
    NUM = GETS()
    IF NUM IS FLOAT
      RETURN NUM
    PRINT "Please enter a valid number:"
  END_LOOP
END_SUB_PROCESS

PRINT "Enter the length of the room in meters:"
LENGTH = SUB_PROCESS GET_FLOAT
PRINT "Enter the width of the room in meters:"
WIDTH = SUB_PROCESS GET_FLOAT
AREA = LENGTH * WIDTH
PRINT "The area of the room is {AREA} square meters ({AREA * 10.7639} square feet)."
```


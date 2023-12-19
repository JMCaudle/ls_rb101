PEDAC Template
============
Write a method that will take a short line of text, and print it within a box.
```
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+
```
You may assume that the input will always fit in your terminal window.

(Understand the) Problem
------------------------

* Inputs: A string
* Output: A series of calls to STDOUT displaying the string surrounded by a box

---

**Problem Domain:**

The string class, and an understanding of ways to output to STDOUT

---

**Implicit Requirements:**

Space should be alloted vertically even for an empty string, but horizontal space should not automatically be alloted to an empty string.

---

**Clarifying Questions:**

1. Should we write our method to accept multi-line strings?
2.
3.

---

**Mental Model:**

Remove trailing Newlines. Split string up based on Newlines ('\n'), get length of longest segment (horizontal size).  Count number of Newlines (Vertical size).  Output top border row, mostly empty second row, and content rows.  Finish with another mostly empty penultimate row, then the bottom border row.

---

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

```
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+
```

---

Data Structure
--------------

Ruby String Class

---

Algorithm
---------



Pseudocode
----

```
# Given an input string STR
STR = STR.chomp('\n')
HEIGHT = STR.count('\n')
STR = STR.split('\n')
LENGTH = SUBPROCESS_LONGEST_SEGMENT(STR)

SUBPROCESS_DISPLAY_BORDER_ROW(LENGTH)
SUBPROCESS_DISPLAY_BUFFER_ROW(LENGTH)

INDEX = 0
WHILE (INDEX < HEIGHT)
  SUBPROCESS_DISPLAY_CONTENT_ROW(STR[INDEX], LENGTH)
  INDEX += 1

SUBPROCESS_DISPLAY_BUFFER_ROW(LENGTH)
SUBPROCESS_DISPLAY_BORDER_ROW(LENGTH)
```

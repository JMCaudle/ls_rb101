=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

-  Inputs:
  > A string to Repeat
  > A positive int with the number of times to repeat
-  Output:
  > string output with puts int times

---

**Problem Domain:**
  Common Ruby terminology utilizing STDOUT

---

**Implicit Requirements:**
  All explicit here

---

**Clarifying Questions:**

1. What happens if int == 0?
  > 0 is not considered a positive int, so is not an allowed input
2.
3.

---

**Mental Model:**
  -Define a method that takes a string and an int as parameters and outputs the string int times

---

Examples / Test Cases / Edge Cases
----------------------------------

**Examples:**

-  Example 1
  -  Inputs:
    string: "Hello"
    int: 3
  -  Output:
    "Hello"
    "Hello"
    "Hello"
-  Example 2
  -  Inputs:
  -  Output:

---

_Your Test Cases:_

-  Example 3
  -  Inputs:
    string: "Bye"
    int: 1
  -  Output:
    "Bye"
---

_Your Edge Cases:_

-  Example 4
  -  Inputs:
    string: ""
    int: 5
  -  Output:
    ""
    ""
    ""
    ""
    ""


---

Data Structure  
--------------
No other data structues required outside of the method and parameters provided

---

Algorithm
---------
  -Define a method called repeat that takes parameters string and int
  -within the method repeat cause a loop to repeat int times
  -within that loop output the string to a newline of the console

Code
----

=end

def repeat(string, int)
  int.times {puts string}
end

repeat("Hello", 3)
repeat 'Bye', 1
repeat "", 5
repeat "confirm", 2

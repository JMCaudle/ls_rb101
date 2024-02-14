PEDAC Template
============

Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

```
What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?
```

(Understand the) Problem
------------------------

* Inputs: A string (the user's name)
* Output: A string (the computer's response)

---

**Problem Domain:**

Language , and the semantic implications of an all caps font.

---

**Implicit Requirements:**

---

**Clarifying Questions:**

1.  What level of input validation is expected?
2.
3.

---

**Mental Model:**

Prompt the user for their name.  If name is '' or '!', prompt again for a valid name.  Once we have a valid name, if the last character is '!' then trim the bang and print the yelling string, else print the normal string.

---

Examples / Test Cases / Edge Cases
----------------------------------

```
What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?
```

---

Data Structure
--------------

Strings

---

Algorithm
---------

Pseudocode
----

```
name = ''
LOOP
  PRINT "What is your name? "
  NAME = GETS()
  BREAK if !['', '!'].include?(NAME)
END_LOOP

IF NAME[NAME.LENGTH - 1] == '!'
  NAME.REMOVE(NAME.LENGTH - 1)
  PRINT "HELLO {NAME.UPCASE}. WHY ARE WE SCREAMING?"
ELSE
  PRINT "Hello {NAME}."
```


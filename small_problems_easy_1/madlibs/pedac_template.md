PEDAC Template
============

Mad libs are a simple game where you create a story template with blanks for words. You, or another player, then construct a list of words and place them into the story, creating an often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective and injects those into a story that you create.

(Understand the) Problem
------------------------

* Inputs: A series of user-inputted strings
* Output: A call to STDOUT interpolating those strings into a larger string

---

**Problem Domain:**

Ruby class String, some simple grammatical concepts.

---

**Implicit Requirements:**

---

**Clarifying Questions:**

1.  Presumably there is no input validation other than requiring a non-empty string?
2.
3.

---

**Mental Model:**

A series of prompts asking for a
- noun
- verb
- adverb
- adjective

Interpolate the user's strings into the "story" string

---

Examples / Test Cases / Edge Cases
----------------------------------

```
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!
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
METHOD GET_WORD(WORD_TYPE)
  LOOP
    PRINT "Enter a " + WORD_TYPE + ": "
    STR = GETS()
    IF STR != ''
      RETURN STR
  END_LOOP
END_METHOD

NOUN = GET_WORD('noun')
VERB = GET_WORD('verb')
ADVERB = GET_WORD('adverb')
ADJECTIVE = GET_WORD('adjective')

NEW_LINE
PRINT "Do you {VERB} your {ADJECTIVE} {NOUN} {ADVERB}? That's hilarious!"
```

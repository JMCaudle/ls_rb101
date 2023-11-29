=begin

PEDAC Template
==============

(Understand the) Problem
------------------------

Essential to understanding how to solve a problem. In order to be able to solve
a problem, you have to at least understand what the problem is and what it is
asking. Take some time to allow the problem to load into your brain.

**Don't rush this.**

First, identify the inputs and the outputs of the problem.

-  Inputs:
  > 2 numeric operands
  > 1 arithmetic operator (eg. +, -, *, or /)
-  Output:
  >display the result of performing the arithmetic operator on the 2 operands

---

Check for Problem Domain: the Problem Domain is the area of expertise or
application that needs to be examined to solve a problem. Basically any
domain-specific terms or concepts that may be applicable.

It limits the scope of the problem.

For example, if the problem asks you to add up a set of multiples, you need to
make sure you know what multiples are.

Could one word have multiple meanings? etc

**Problem Domain:**
  Basic arithmetic using STDIN and STDOUT for I/O

---

Check for Implicit Requirements. Are there requirements that are not explicitly
stated?

**Implicit Requirements:**
  It is implied that we should differentiate between the first and second operand
in order to implement subtraction and division.
  Should probably also refuse to divide by zero

---

Some questions to ask the interviewer (or perhaps yourself) to better understand
the problem.

**Clarifying Questions:**

1.  Could ask if we should use ints or floats, but I think the code will be
  naturally agnostic.
2.  Should we keep offering to complete calculations?
3.

---

A mental model is an explanation of someone's thought process about how
something works in the real world. Think of it as a summary of the "entire
problem" written in your own words.

It is your perspective of *what* the problem requires--not *how*. How is
implemented in the Algorithm section.

As a rule of thumb, you can keep the number of mental models to one if it fully,
and accurately, captures the requirements of the problem.

**Mental Model:**
  Ask for the two operands, in relevant order.  Ask for the operator, and check 
  for division by 0.  Use the operands and operator to perform the calculation
  and display the result.  (optionally) Offer the option to exit or restart every step of the way.
  After displaying a result, offer to use the result as the first operand of the next calc.

---

Examples / Test Cases / Edge Cases
----------------------------------

The objective is to come up with examples that validate your understanding of
the problem, and confirm that you are working in the right direction. Typically
the confirmation will come from documentation of a process, or a person.

**Examples:**

-  Example 1
  -  Inputs:
    Operands: 2, 3
    Operator: Add
  -  Output:
    "2 added to 3 is equal to 5"
-  Example 2
  -  Inputs:
  -  Output:

---

**Test Cases:**

*Note: Rules for a specific problem are oftentimes an excellent place to find
test cases. If you're working with collections, it's a good idea to find test
cases that deal with zero, one or multiple elements in the collection. Try to
provide test cases that handle any edge cases you can find.*

Find test cases with the following conditions:

-  Zero (`0`)
-  Emptiness (`nil`, `null`, `""`, `[]`, `{}`)
-  Boundary conditions (where conditions change)
-  Repetition / duplication
-  Upper case / lower case
-  Data types

As well as the following failurs and bad inputs:

-  Raise exceptions / report errors
-  Special values (`nil`, `0`, `""`, surrogate pairs, char. encoding, special
   char.)

_Your Test Cases:_

-  Example 3
  -  Inputs:
    Operands: 8, 0
    Operator: divide
  -  Output:
    Display : "Cannot divide by zero, please try another calculation."

---

**Edge Cases:**

Edge cases are situations that occur along the "edge" of a specific problem.

For example: problems that involve iterating over numbers have edge cases that
are at both ends of the range. Typically can involve working with negative
numbers, 0, or extremely high values.

_Your Edge Cases:_

-  Example 4
  -  Inputs:
  -  Output:

---

Data Structure
--------------

Determine what data structures you will work with to convert the input to the
desired output.

The chief considerations here are your intended programming language and your
mental model.

Are you going to use arrays, hashes, etc? Your data structure will influence
your program.

> It's not really a data structure, but I imagine using a case statement for the operator

---

Algorithm
---------

Start with your mental model if you have one. While you're still learning to
solve problems, it would be a good idea to consistently create mental models to
assist you.

Otherwise you can start with your Data Structure, and think about how you'd
build and manipulate it to get to the output. For example, if you're going to
use an array maybe you would want to focus on constructing or iterating over a
collection.

The chief objective here is to determine a series of instructions that will
transform the input into the desired output.

-  The challenge is to get to the right amount of detail (think about the steps
   to creating a peanut butter and jelly sandwich.)
-  You want something that you can readily convert to code without actually
   writing code.
-  Before implementing the algorithm, you should test it manually with test
   cases.

   1. get first operand, check for exit or restart
   2. get second operand, check for exit or restart
   3. get operator, check for exit or restart
   4. parse operator, if division make sure second operand != 0 (restart if necessary)
   5. display results, check for exit or restart, or restart with current result as first operand

Code
----
=end


# My first attempt for pleasure and practice before watching the accompanying video
# This problem ended up being a little too large for me to implement with pedacs
# as my algorithm glossed over the necessary control expressions.
# Still, having the scaffolding of an algorithm was helpful.

def display_legend(result=false)
  puts "Enter 'x' to exit or 'r' to restart."
  puts "Enter 'c' to continue calculating with\n#{result} as the first number" if result
  print "> "
end

def control_check(string)
  case string
  when "x"
    return true
  when 'r'
    calc()
    return true
  else
    return false
  end
end

def calc(prev=nil)
  if prev
    num1 = prev
  else
    puts "What is the first number in the calculation?"
    display_legend
    num1 = gets.chomp
    return if control_check num1.downcase
    num1 = num1.to_f
  end

  puts "What is the second number in the calculation?"
  display_legend
  num2 = gets.chomp
  return if control_check num2.downcase
  num2 = num2.to_f

  puts "What is the arithmetic operation to be performed?"
  while true
    puts "Enter 'Add', 'Subtract', 'Multiply', or 'Divide'."
    display_legend
    op = gets.chomp
    return if control_check op.downcase
    case op.downcase[0..2]
    when 'add'
      result = num1 + num2
    when 'sub'
      result = num1 - num2
    when 'mul'
      result = num1 * num2
    when 'div'
      if num2 == 0.0
        puts "You cannot divide by 0, please try another calculation\n\n"
        calc()
        return
      end
      result = num1 / num2
    else
      puts "Invalid command, please try again."
      next
    end
    break
  end

  puts "Applying the #{op} operation to the numbers #{num1} and #{num2} results in #{result}.\n\n"

  loop do
    display_legend result
    com = gets.chomp
    return if control_check com.downcase
    if com.downcase == 'c'
      calc result
      return
    end
    puts "Not a valid Command, please try again."
  end

end

calc()

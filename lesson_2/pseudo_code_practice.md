### A method that returns the sum of two integers 

**Casual:**  
  #Given two integers  
  -Add the two ints together  
  -return the sum  

****Formal**:**
```
START  
#Given two integers "num1" and "num2"

SET result = num1 + num2
RETURN result
END
```
---
### A method that takes an array of strings, and returns a string that is all those strings concatenated together 

**Casual:**  
#Given an array of strings  
-Create an empty string to hold the result  
-Iterate through the array:  
* append the string at each value of the array to our result string

-Return the result string

**Formal**:
```
START
#Given an array of strings called 'strings'

SET string = ""
SET iterator = 0

WHILE iterator < strings.length
  string = string + strings[iterator]
  iterator = iterator + 1

RETURN string
END
```
---
### A method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element. For instance: `every_other([1,4,7,2,5]) # => [1,7,5]`

**Casual:**  
#Given an array of integers  
-Create an empty array to hold the result  
-Iterate through the given array
* If the index is odd
  * Add the value of the given array at this index to our result array

-Return the result array

**Formal:**  
```
START
#Given an array of integers called "ints"

SET result = []
SET iterator = 0

WHILE iterator < ints.length
  IF iterator is odd
    result << ints[iterator]

RETURN result
END
```
---
### A method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is `'x'` and the string is `'axbxcdxex'`, the method should return `6` (the index of the 3rd `'x'`). If the given character does not occur at least 3 times, return `nil`. 

**Casual:**  
#Given a character and a string  
-Iterate through the string  
* If this element of the given string equals the given character
  * Increment counter by 1
  * If Counter equals 3  
    * return the current iterator  

#Since this line can only be reached if the iteration fails to find 3 matches  
-return nil

**Formal:**
```
#Given a character named 'char' and a string named 'string'

SET iterator = 0
SET counter = 0

WHILE iterator < string.length
  IF string[iterator] == char
    counter = counter + 1
    IF counter == 3
      RETURN iterator

RETURN nil
```
---
### A method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes. For instance:
 ```
 merge([1, 2, 3], [4, 5, 6]) # => [1, 4, 2, 5, 3, 6]
 ```
 ### You may assume that both array arguments have the same number of arguments.

 **Casual:**  
 #Given two arrays of equal length  
 -Create an empty result array  
 -Use a single iterator to iterate through both arrays
 * Add the value of the first array at location iterator to the result array
 * Add the value of the second array at location iterator to the result array

 -Return the result array

 **Formal:**  
 ```
 #Given two arrays of equal length called "arr1" and "arr2"

 SET result = []
 SET iterator = 0
 
 WHILE iterator < arr1.length
  result << arr1[iterator]
  result << arr2[iterator]

RETURN result
```
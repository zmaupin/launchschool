# PEDAC

## Problem (Understand)

# PROBLEM:

# Given a string, write a method change_me which returns the same
# string but with all the words in it that are palindromes uppercased.

# change_me("We will meet at noon") == "We will meet at NOON"
# change_me("No palindromes here") == "No palindromes here"
# change_me("") == ""
# change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"

After reading this problem, some items may need clarification:

What is a palindrome? You might ask the interviewer to tell you what a palindrome is, and the interviewer would tell you that it is a word that reads the same forwards and backward.

Should the words in the string remain the same if they already use uppercase? Here, you can check the test cases. In the fourth test case, the word LOVE already uses uppercase, and it remains uppercase in the solution.

How should I deal with empty strings provided as input? The test cases frequently answer this question. In this case, test case number 3 provides the answer.

Can I assume that all inputs are strings? Test cases don't show any non-string inputs, so you should ask whether the inputs can contain non-string values, and what you should do with them. In this problem, we won't worry about non-string values.

Should I consider letter case when deciding whether a word is a palindrome? Again, test cases don't show any appropriate examples. The interviewer might tell you that the palindrome words should be case sensitive: 'mom' is a palindrome, 'Mom' is not.

Do I need to return the same string object or an entirely new string? This question is one of the most important and most overlooked that you can ask. Typically, while solving problems, students make certain assumptions. One assumption might be that they need to return the same string object. Students often start solving the problem without checking whether the assumption is correct. For this reason, the student might end up losing 10-15 minutes struggling with the wrong problem. In this problem, you should return an entirely new string.

Always verify your assumptions either by looking at the test cases or by asking the interviewer. Some assumptions, like whether we should treat strings as case-sensitive or not, can be verified either by looking at the problem description, if that is mentioned there, or by checking the test cases. If you can't determine the answer with the test cases or problem description, you should ask the interviewer to clarify this for you.

To conclude this part of the PEDAC process, you need to write down what the inputs and outputs for the problem are. You should also describe the rules that you must follow. The rules should encapsulate all the explicit and implicit requirements in the problem. So, you should identify what the explicit requirements are, write them down, and then repeat the process for the implicit requirements:

# input: string
# output: string (not the same object)
# rules:
#      Explicit requirements:
#        - every palindrome in the string must be converted to
#          uppercase. (Reminder: a palindrome is a word that reads
#          the same forwards and backward).
#        - Palindromes are case sensitive ("Dad" is not a palindrome, but "dad" is.)

#      Implicit requirements:
#        - the returned string shouldn't be the same string object.


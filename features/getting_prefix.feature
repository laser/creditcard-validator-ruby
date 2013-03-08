# Return the first k number of digits from number. If the number of digits in number is less than k, return number.

Feature: Getting a number's prefix
    In order to build a correct checksum
    As a validator program
    I want to be able to get the first k digits of number n. If the number of digits in n is less than digits in k, return n

    Scenario Outline: Getting a prefix
        When I ask the validator for the first <k> characters of number <n>
        Then the value <z> should be returned

        Examples:
             | n   | k | z   |
             | 1   | 1 | 1   |
             | 1   | 2 | 1   |
             | 9   | 1 | 9   |
             | 10  | 2 | 10  |
             | 100 | 2 | 10  |
             | 999 | 3 | 999 |
             | 999 | 4 | 999 |

Feature: Get single digit value of number
    In order to build a correct checksum
    As a validator program
    I want to be able to take a whole number and if greater than 9 return the sum of its digits (or if not, return the original)

    Scenario Outline: Getting single digit value of number
        When I ask the validator for the digit-value of number <number>
        Then the resulting digit value should be <digit>

        Examples:
            |number|digit|
            |10    |1    |
            |1     |1    |
            |5     |5    |
            |18    |9    |
            |16    |7    |

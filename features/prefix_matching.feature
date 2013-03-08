Feature: Determine if number is prefixed with a digit
    In order to build a correct checksum
    As a validator program
    I want to be able to take a number and determine if it's prefixed with a given digit

    Scenario Outline: Prefix checking
        When I ask the validator to check if <number> is prefixed by <prefix_digit>
        Then the prefix-checker should return <prefixed>

        Examples:
            |number|prefix_digit|prefixed|
            |12345 |1           |true    |
            |12345 |2           |false   |

Feature: Sums odd digits
    In order to build a correct checksum
    As a validator program
    I want to be able to sum the odd-place digits in a number

    Scenario Outline: Sum off-place digits
        When I ask the validator to sum the odd-place numbers in <ccnumber>
        Then the sum of all odd-place numbers should be <oddsum>

        Examples:
            |ccnumber        |oddsum|
            |4388576018410707|41 |
            |371449635398431 |33 |
            |378282246310005 |33 |
            |6011016011016011|5  |
            |5454545454545454|32 |
            |5111005111051128|18 |

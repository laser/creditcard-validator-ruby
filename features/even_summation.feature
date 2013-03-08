Feature: Sums even digits
    In order to build a correct checksum
    As a validator program
    I want to be able to sum the doubled even-place numbers. When a doubled number is greater or equal to 10, use the sum of the two digits.

    Scenario Outline: Sum of even-place digits
        When I ask the validator to sum the even-place numbers in <ccnumber>
        Then the doubled, digit-adjusted sum of all even-place numbers should be <evensum>

        Examples:
            |ccnumber        |evensum|
            |4388576018410707|29     |
            |371449635398431 |47     |
            |378282246310005 |27     |
            |6011016011016011|15     |
            |5454545454545454|8      |
            |5111005111051128|12     |

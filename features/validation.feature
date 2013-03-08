Feature: Validating Credit Card Numbers
    In order to not get ripped off by scammers
    As a vendor of goods
    I want to be able to validate credit card numbers inputted by a user

    Scenario Outline: Validate credit card numbers
        When I ask the validator to validate a user-inputted CC number <ccnumber>
        Then the result should be <valid>

        Examples:
            | ccnumber         | valid |
            | 4388576018402626 | false |
            | 4388576018410707 | true  |
            | 371449635398431  | true  |
            | 378282246310005  | true  |
            | 6011016011016011 | true  |
            | 5454545454545454 | true  |
            | 5111005111051128 | true  |

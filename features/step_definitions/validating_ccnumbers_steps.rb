require 'rspec'
require File.dirname(__FILE__) + '/../../lib/ccnumber_validator'

When "I ask the validator to validate a user\-inputted CC number $n" do |arg1|
    @is_valid = Validator.is_valid(arg1.to_i)
end

Then "the result should be $output" do |output|
    @is_valid.should == (output == "true" ? true : false)
end

When(/^I ask the validator to sum the odd\-place numbers in (\d+)$/) do |arg1|
    @odd_sum = Validator.sum_of_odd_place(arg1.to_i)
end

Then(/^the sum of all odd\-place numbers should be (\d+)$/) do |arg1|
    @odd_sum.should == arg1.to_i
end

When(/^I ask the validator to sum the even\-place numbers in (\d+)$/) do |arg1|
    @even_sum = Validator.sum_of_double_even_place(arg1.to_i)
end

Then(/^the doubled, digit\-adjusted sum of all even\-place numbers should be (\d+)$/) do |arg1|
    @even_sum.should == arg1.to_i
end

When(/^I ask the validator for the digit\-value of number (\d+)$/) do |arg1|
    @digit_value = Validator.get_digit(arg1.to_i)
end

Then(/^the resulting digit value should be (\d+)$/) do |arg1|
    @digit_value.should == arg1.to_i
end

When(/^I ask the validator to check if (\d+) is prefixed by (\d+)$/) do |arg1, arg2|
    @prefix_matched = Validator.prefix_matched(arg1.to_i, arg2.to_i)
end

Then(/^the prefix\-checker should return true$/) do
    @prefix_matched.should == true
end

Then(/^the prefix\-checker should return false$/) do
    @prefix_matched.should == false
end

When(/^I ask the validator for the first (\d+) characters of number (\d+)$/) do |arg1, arg2|
    @prefix = Validator.get_prefix(arg2.to_i, arg1.to_i)
end

Then(/^the value (\d+) should be returned$/) do |arg1|
    @prefix.should == arg1.to_i
end

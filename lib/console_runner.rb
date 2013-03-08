require_relative 'ccnumber_validator'

print "Enter a credit card number: "
ccnum = Integer(gets.chomp)
valid = Validator.is_valid(ccnum)
print "Entered credit card number is " + (valid ? "valid" : "invalid") + ".\n"

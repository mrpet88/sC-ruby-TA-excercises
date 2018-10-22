Given(/^the global variable is "(.*?)"$/) do |arg|

  Auth.changes(arg)
  p $global_variable

end

When(/^the user change to "(.*?)"$/) do |arg1|
  Auth.changes(arg1)

  p $global_variable
end

Then(/^global variable should be "(.*?)"$/) do |string|
  if $global_variable == string
    p "hurray its the same"
  else
    raise "Global variable is #{$global_variable}"
  end

  puts $global_variable
end

# second excercise

Given(/^the instance variable is "(.*?)"$/) do |string|
  @instance_variable = string
  p @instance_variable
end

When(/^the user replace the instance variable with "(.*?)"$/) do |string02|
  @instance_variable = string02
  p @instance_variable

end

Then(/^the instance variable should be "(.*?)"$/) do |string03|
  if @instance_variable == string03
    p 'yes it is'
  else
    p "it is not"
  end
  end

# third excercise

Given(/^the constant variable is "(.*?)"$/) do |number|
  VAR1 = number
  puts VAR1
end

When(/^the second constant variable is "(.*?)"$/) do |number2|
  VAR2 = number2
  puts VAR2

end

Then(/^confirm the constant variable is not "(.*?)"$/) do |number3|
  if VAR1 != VAR2
    p 'yes i confirm it, it is NOT!!'
  else
    p "it is"
  end
end
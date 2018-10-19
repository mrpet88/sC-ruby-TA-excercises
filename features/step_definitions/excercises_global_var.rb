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
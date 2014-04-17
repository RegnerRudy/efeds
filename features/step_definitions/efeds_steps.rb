require 'rubygems'
require 'watir-webdriver'
require 'selenium-webdriver'

Given  (/^I have logged in$/) do
@browser = Watir::Browser.new :chrome

@browser.goto('http://login.max.gov')

@browser.text_field(:id => 'input-userID').set 'Zqwerty.zq021@moody.af.mil'
@browser.text_field(:id => 'input-password').set '2689:"oI*/i0J59'
@browser.button(:id => 'button-userID').click

sleep 5

@browser.goto('http://ogedev.tcg.com/')
	#
#  am I on the right page?
#
@browser.text.include? 'efeds-forms-harness'
	
end


When  (/^I go to the efeds Home page$/) do

@browser.goto "http://ogedev.tcg.com/efeds-login/"
#
#  am I on the right page?
#
@browser.text.include? 'Authentication for Integrity'
sleep 5


@browser.form(:class, 'ng-pristine ng-valid').submit

sleep 5
#
#  am I on the right page?
#
#@browser.text.include? 'MY CURRENT REPORTS'

	
end

Then /^I should see "([^"]*)" text/ do |arg1|
  @browser.text.include? arg1
end


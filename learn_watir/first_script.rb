require 'rubygems'
require 'watir'
@browser = Watir::Browser.new :chrome

def adopt_puppy_number(num)
  @browser.button(:value => 'View Details', :index => num - 1).click
  @browser.button(:value => 'Adopt Me!').click
end

 @browser.goto 'http://puppies.herokuapp.com'
 adopt_puppy_number 1
 @browser.button(:value => 'Adopt Another Puppy').click
 adopt_puppy_number 2
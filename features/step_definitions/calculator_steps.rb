# frozen_string_literal: true

require_relative '../../features/pages/home'
require_relative '../../features/pages/results'

Given /^user visits online calculator page$/ do
  @page = Home.new
  @page.load
end

When (/^user multiply "([^"]*)" with "([^"]*)"$/) do |numb1, numb2|
  @page = Home.new
  @page.input_first_numb(numb1)
  @page.input_multiply_sign
  @page.input_second_numb(numb2)
  @page.press_enter
end

When (/^user multiply negative number "([^"]*)" with "([^"]*)"$/) do |negnumb1, negnumb2|
  @page = Home.new
  @page.input_first_negnumb(negnumb1)
  @page.input_multiply_sign
  @page.input_second_negnumb(negnumb2)
  @page.press_enter
end

Then (/^the results should be "([^"]*)"$/) do |results|
  @page = Home.new
  @page.validate_multiply_result(results)
  @page = Home.new
  @page.load
end

When (/^user divide "([^"]*)" with "([^"]*)"$/) do |numb1, numb2|
  @page = Home.new
  @page.input_first_numb(numb1)
  @page.input_division_sign
  @page.input_second_numb(numb2)
  @page.press_enter
end

When (/^user add "([^"]*)" with "([^"]*)"$/) do |numb1, numb2|
  @page = Home.new
  @page.input_first_numb(numb1)
  @page.input_addition_sign
  @page.input_second_numb(numb2)
  @page.press_enter
end

When (/^user substract "([^"]*)" with "([^"]*)"$/) do |numb1, numb2|
  @page = Home.new
  @page.input_first_numb(numb1)
  @page.input_substraction_sign
  @page.input_second_numb(numb2)
  @page.press_enter
end

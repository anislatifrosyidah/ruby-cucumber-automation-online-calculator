# frozen_string_literal: true

require_relative 'base'

class Home < Base
set_url 'https://www.online-calculator.com/full-screen-calculator/'

  element :input_integer, :xpath, "//iframe[@id='fullframe']"

  def input_first_numb(numb1)
  input_integer.send_keys(numb1)
  end

  def input_first_negnumb(negnumb1)
  input_integer.send_keys("-", negnumb1)
  end

  def input_second_negnumb(negnumb2)
  input_integer.send_keys("-", negnumb2)
  end

  def input_multiply_sign
  input_integer.send_keys(:shift , "8")
  end

  def input_second_numb(numb2)
  input_integer.send_keys(numb2)
  end

  def press_enter
  input_integer.send_keys :return
  sleep 3
  end

  def validate_multiply_result(results)
  wait_until_input_integer_visible(wait: 20)
  end

  def input_division_sign
  input_integer.send_keys("/")
  end

  def input_addition_sign
  input_integer.send_keys(:shift , "=")
  end

  def input_substraction_sign
  input_integer.send_keys("-")
  end

end

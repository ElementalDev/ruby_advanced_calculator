class CalcEngine

  def run_calculator
    user_choice = ""
    number1 = 0
    number2 = 0
    # Basic menu
    puts "---------------------------------------"
    puts "Which calculator would you like to use?"
    puts "(Add)ition"
    puts "(Sub)traction"
    puts "(Mul)tiplication"
    puts "(Div)ision"
    puts "---------------------------------------"
    user_choice = gets.chomp
    user_choice.downcase

  end

  # Adds 2 numbers
  def add_two_numbers(num1, num2)
    num1 + num2
  end
  
  # Subtract 2 numbers
  def subtract_two_numbers(num1, num2)
    num1 - num2
  end

  # Multiply 2 numbers
  def multiply_two_numbers(num1, num2)
    num1 * num2
  end

  # Divides 2 numbers
  def divide_two_numbers(num1, num2)
    num1 / num2
  end

end

calc = CalcEngine.new()
calc.run_calculator

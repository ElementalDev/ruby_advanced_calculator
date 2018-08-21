class CalcEngine
  # MENU
  def run_calculator
    user_choice = ""
    number1 = 0
    number2 = 0
    # Basic menu
    puts "---------------------------------------"
    puts "Which calculator would you like to use?"
    puts "(Bas)ic"
    puts "(Adv)anced"
    puts "(Bod)y mass index"
    puts "(Tri)p"
    puts "---------------------------------------"
    user_choice = gets.chomp
    user_choice = user_choice[0..2]
    user_choice = user_choice.downcase
    puts user_choice

    case user_choice
    when "bas"
    when "adv"
    when "bod"
    when "tri"
    end
  end


  # HELPER METHODS
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

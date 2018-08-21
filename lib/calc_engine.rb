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

    case user_choice
    when "bas"
      basic_calc
    when "adv"
      advanced_calc
    when "bod"
    when "tri"
    end
  end

  def get_num1
    # Ask for first number
    puts "First number: "
    num1 = gets.chomp
  end

  def get_num2
    # Ask for second number
    puts "Second number: "
    num2 = gets.chomp
  end

  def basic_calc
    # Numbers to use
    num1 = 0.0
    num2 = 0.0
    # Result of the function
    result = 0.0
    # Operation they wish to use
    operation = ""

    puts "What would you like to do? (+|-|*|/)"
    operation = gets.chomp

    case operation
    when "+"
      num1 = get_num1
      num2 = get_num2
      # Calls the relevant helper method
      result = add_two_numbers(num1.to_f, num2.to_f)
      # Prints result
      puts "Answer: #{result}"
    when "-"
      num1 = get_num1
      num2 = get_num2
      # Calls the relevant helper method
      result = subtract_two_numbers(num1.to_f, num2.to_f)
      # Prints result
      puts "Answer: #{result}"
    when "*"
      num1 = get_num1
      num2 = get_num2
      # Calls the relevant helper method
      result = multiply_two_numbers(num1.to_f, num2.to_f)
      # Prints result
      puts "Answer: #{result}"
    when "/"
      num1 = get_num1
      num2 = get_num2
      # Calls the relevant helper method
      result = divide_two_numbers(num1.to_f, num2.to_f)
      # Prints result
      puts "Answer: #{result}"
    end
  end

  def advanced_calc
    # Numbers to use
    num1 = 0.0
    num2 = 0.0
    # Result of the function
    result = 0.0
    # Operation they wish to use
    operation = ""

    puts "What would you like to do? (pow|sqrt)"
    operation = gets.chomp
    operation = operation[0..2]
    operation = operation.downcase

    case operation
    when "pow"
      puts "Base: "
      num1 = gets.chomp
      puts "Exponent: "
      num2 = gets.chomp
      # Calls the relevant helper method
      result = power_of(num1.to_f, num2.to_f)
      # Prints result
      puts "Answer: #{result}"
    when "sqr"
      puts "Number: "
      num1 = gets.chomp
      # Calls the relevant helper method
      result = sq_root(num1.to_i)
      # Prints result
      puts "Answer: #{result}"
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

  # Square roots a given number
  def sq_root(num)
    Math.sqrt(num)
  end

  # Times a given number by itself exponent times
  def power_of(base, exponent)
    base ** exponent
  end

  # Works out bmi, allowing user to decide what measurement system they want to use
  def bmi_aritmetic(measure, weight, height)
    result = 0.0
    if measure == "imp"
      result = 703 * (weight / (height ** 2))
    elsif measure == "met"
      result = weight / (height ** 2);
    end
  end

  # Works out time of a trip from distance and speed
  def trip_time(dist, mph)
    dist / mph;
  end

  # Works out cost of a trip from distance, efficiency and cost per gallon
  def trip_cost(dist, eff, cpg, mph)
    mph_diff = 0.0

    if mph <= 60
      ((dist / eff) * cpg)
    elsif mph > 60
      mph_diff = mph - 60
      for i in 0..mph_diff
        eff -= 2
        if eff <= 0
          puts "This is impossible. Please try again"
        end
      end
      ((dist / eff) * cpg)
    end
  end
end

def main
  begin
    calc = CalcEngine.new()
    calc.run_calculator
    reuse = use_again?
  end while reuse == true
end

def use_again?
  user_choice = ""

  puts "Would you like to use the calculator again? (y/n)"
  user_choice = gets.chomp

  if user_choice == "y"
    true
  else
    false
  end
end

main

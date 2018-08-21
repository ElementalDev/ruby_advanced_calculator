class CalcEngine
  # MAIN METHODS
  # Calc menu
  def menu
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
    puts "(Q)uit"
    puts "---------------------------------------"
    # Gets user input
    user_choice = gets.chomp
    user_choice = user_choice[0..2]
    user_choice = user_choice.downcase

    # Evaluates the user decision
    case user_choice
    when "bas"
      basic_calc
    when "adv"
      advanced_calc
    when "bod"
      bmi_calc
    when "tri"
      trip_calc
    when "q"
      exit
    end
  end
  # Gets user input for num 1
  def get_num1
    # Ask for first number
    puts "First number: "
    num1 = gets.chomp
  end
  # Gets user input for num 2
  def get_num2
    # Ask for second number
    puts "Second number: "
    num2 = gets.chomp
  end
  # Basic calculator method
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
  # Advanced calculator method
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
    # Base and Exponent operation
    when "pow"
      puts "Base: "
      num1 = gets.chomp
      puts "Exponent: "
      num2 = gets.chomp
      # Calls the relevant helper method
      result = power_of(num1.to_f, num2.to_f)
      # Prints result
      puts "Answer: #{result}"
    # Square root operation
    when "sqr"
      puts "Number: "
      num1 = gets.chomp
      # Calls the relevant helper method
      result = sq_root(num1.to_i)
      # Prints result
      puts "Answer: #{result}"
    end
  end
  # BMI calculator method
  def bmi_calc
    height = 0.0
    weight = 0.0
    result = 0.0
    measurement = ""

    # Ask what measurement system they would like
    puts "Which measurement system would you like to use? (imp | met)"
    measurement = gets.chomp
    measurement = measurement[0..2]
    measurement = measurement.downcase

    # Ask for different units for different measurements
    if measurement == "imp"
      puts "Please enter your height in inches: "
      height = gets.chomp
      puts "Please enter your weight in pounds: "
      weight = gets.chomp
    elsif measurement == "met"
      puts "Please enter your height in meters: "
      height = gets.chomp
      puts "Please enter your weight in kilograms: "
      weight = gets.chomp
    end
    # Store and display the result
    result = bmi_aritmetic(measurement, weight.to_f, height.to_f)
    puts "BMI: #{result.round(2)}"
  end
  # Trip calculator method
  def trip_calc
    dist = 0.0
    eff = 0.0
    cpg = 0.0
    mph = 0
    time_result = 0
    cost_result = 0.0

    # Asks user for input
    puts "How far are you going in miles?: "
    dist = gets.chomp
    puts "How efficient is your vehicle in miles per gallon?: "
    eff = gets.chomp
    puts "How much does it cost per gallon of fuel?: "
    cpg = gets.chomp
    puts "What is the average speed you will be going in miles per hour?: "
    mph = gets.chomp

    # Calls helper functions to calculate the input
    time_result = trip_time(dist.to_i, mph.to_i)
    cost_result = trip_cost(dist.to_i, eff.to_f, cpg.to_f, mph.to_i)

    # Output the result
    puts "It will take you approx. #{time_result.ceil} hours and will cost #{cost_result.round(2)}"
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
    if measure == "imp"
      703 * (weight / (height ** 2))
    elsif measure == "met"
      weight / (height ** 2);
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
    calc.menu
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

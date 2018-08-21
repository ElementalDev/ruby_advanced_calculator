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

  def basic_calc
    num1 = 0.0
    num2 = 0.0
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

# calc = CalcEngine.new()
# calc.run_calculator

# https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
require 'spec_helper'

describe "Testing the calc engine" do

  before(:all) do
    @calc = CalcEngine.new()
  end

  # TEST FOR ADDITION
  it "should add two of any numbers together" do
    expect(@calc.add_two_numbers(1, 1)).to eq(2)
    expect(@calc.add_two_numbers(4.3, 5.9)).to eq(10.2)
    expect(@calc.add_two_numbers(-5, -3)).to eq(-8)
  end
  # TEST FOR SUBTRACTION
  it "should subtract two of any numbers together" do
    expect(@calc.subtract_two_numbers(3, 1)).to eq(2)
    expect(@calc.subtract_two_numbers(6.5, 2.5)).to eq(4.0)
    expect(@calc.subtract_two_numbers(-5, -3)).to eq(-2)
  end
  # TEST FOR MULTIPLICATION
  it "should multiply two of any numbers together" do
    expect(@calc.multiply_two_numbers(5, 5)).to eq(25)
    expect(@calc.multiply_two_numbers(1.5, 0.5)).to eq(0.75)
    expect(@calc.multiply_two_numbers(-5, -3)).to eq(15)
  end
  # TEST FOR DIVISION
  it "should divide two of any numbers together" do
    expect(@calc.divide_two_numbers(50, 5)).to eq(10)
    expect(@calc.divide_two_numbers(5.5, 0.5)).to eq(11)
    expect(@calc.divide_two_numbers(-6, -3)).to eq(2)
  end
  # TEST FOR SQUARE ROOT
  it "should be able to square root any number" do
    expect(@calc.square_root(81)).to eq(9)
    expect(@calc.square_root(2.5)).to eq(1.5811388300841898)
  end
  # TEST FOR BASE AND EXPONENT
  it "should times a base number by its exponent" do
    expect(@calc.power_of(5, 2)).to eq(25)
    expect(@calc.power_of(9, 2)).to eq(81)
  end
  it "should calculate bmi based on imperial or metric measurments" do
    expect(@calc.bmi_aritmetic("imp", 150, 69.7)).to eq(21.706061435667102)
    expect(@calc.bmi_aritmetic("met", 90, 1.73)).to eq(30.071168431955627)
  end
end

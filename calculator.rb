# calculator.rb

class Calculator
  def initialize
    @operations = {
      '+' => ->(a, b) { a + b },
      '-' => ->(a, b) { a - b },
      '*' => ->(a, b) { a * b },
      '/' => ->(a, b) { a / b.to_f } # Ensure division returns a float
    }
  end

  def perform_operation(operator, a, b)
    if @operations[operator]
      @operations[operator].call(a, b)
    else
      "Invalid operator. Please use one of: +, -, *, /"
    end
  end
end

# Main execution
if __FILE__ == $PROGRAM_NAME
  calc = Calculator.new

  puts "Welcome to the Ruby Calculator!"
  print "Enter the first number: "
  num1 = gets.chomp.to_f

  print "Enter an operator (+, -, *, /): "
  operator = gets.chomp

  print "Enter the second number: "
  num2 = gets.chomp.to_f

  result = calc.perform_operation(operator, num1, num2)
  puts "Result: #{result}"
end

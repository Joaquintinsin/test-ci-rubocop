# frozen_string_literal: true

# Sample Ruby file with some style issues that RuboCop can detect
class SampleClass
  def greet(name)
    puts "Hello, #{name}!"
  end

  def calculate(x, y)
    x + y
  end

  def check_value(value)
    if value.positive?
      puts 'positive'
    else
      puts 'negative or zero'
    end
  end
end

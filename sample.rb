# Sample Ruby file with some style issues that RuboCop can detect
class SampleClass
  def greet(name)
    puts "Hello, #{name}!"
  end

  def calculate(x, y)
    result=x+y
    result
  end

  def check_value(value)
    if value > 0
      puts 'positive'
    else
      puts 'negative or zero'
    end
  end
end

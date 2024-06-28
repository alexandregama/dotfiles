# Sample Ruby code for testing LSP features

class TestClass
  def initialize(name)
     @name = name
    end

  def greet

    puts "Hello, #{@name}!"
  end
end

test_instance = TestClass.new("Ruby")
test_instance.greet

# Intentional error for diagnostics
# puts "This will cause an error" undefined_variable


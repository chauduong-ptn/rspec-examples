# A service to receive two numbers and add them together
class Adder
  def initialize(a, b)
    @a, @b = a, b
  end

  def perform
    @a + @b
  end
end

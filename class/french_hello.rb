require './hello'

class FrenchHello < Hello
  def greet
    puts "Bonjour, #{@name}"
  end
end


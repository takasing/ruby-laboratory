class Hello

  attr_accessor :name
  @@count = 0

  def greet
    puts "Hello, #{@name}"
    @@count += 1
  end

  def self.count
    @@count
  end

end


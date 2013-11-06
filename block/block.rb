module Block
  def block_method(greet = "Hello", &block)
    if block_given?
      block.call(greet)
    else
      puts greet
    end
  end
  def double_param(greet = "Hello", name = "hoge", &block)
    if block_given?
      block.call(greet, name)
    else
      puts "#{greet}, #{name}"
    end
  end
end


module Embed
  def exec
    puts "start"
    yield
    puts "end"
  end
end


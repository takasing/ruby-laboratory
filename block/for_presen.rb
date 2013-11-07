module ModuleName
  def method(param1, param2)
    if block_given?
      # ブロックありの挙動
      yield
    else
      # ブロックなしの挙動
    end
  end
end

include ModuleName
method "param1", "param2" do |param1, param2|
  # 与えたい挙動
end

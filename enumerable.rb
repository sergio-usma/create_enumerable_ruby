module MyEnumerable
  def all?
    @list.all? { |element| return false unless yield(element) }
    true
  end

  def any?
    @list.any? { |element| return true if yield(element) }
    false
  end
  def filter
    filtered_list = []
    @list.filter { |element| filtered_list << element if yield(element) }
    filtered_list.inspect
  end
end

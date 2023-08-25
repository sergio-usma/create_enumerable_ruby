require_relative 'enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    @list.each
  end
end

require_relative 'my_enumerable'
class MyList
  include MyEnumerable

  def initialize(*elements)
    @list = elements
  end
end

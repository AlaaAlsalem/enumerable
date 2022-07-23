require_relative 'my_enumerables'class MyList  include MyEnumerable
  def initialize(*args)    @list = args  end
  def each    i = 0    while @list[i]      yield @list[i]      i += 1    end  endend
list = MyList.new(1, 2, 3, 4)
# Test #all?puts(list.all? { |e| e < 5 })# trueputs(list.all? { |e| e > 5 })# false
# Test #any?puts(list.any? { |e| e == 2 })# trueputs(list.any? { |e| e == 5 })# false
# Test #filterputs list.filter(&:even?)# [2, 4]
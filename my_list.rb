require_relative 'my_enumerables'
class MyList
  include MyEnumerable

  def initialize(*args)
    @list = args
  end

  def each
    i = 0
    while @list[i]
      yield @list[i]
      i += 1
    end
  end
end

list = MyList.new(1, 2, 3, 4)

puts(list.all? { |e| e < 5 })

puts(list.all? { |e| e > 5 })

puts(list.any? { |e| e == 2 })

puts(list.any? { |e| e == 5 })

puts list.filter(&:even?)

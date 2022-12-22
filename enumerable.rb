module MyEnumerable
  # all method
  def all?
    array1 = []
    @list.each { |item| array1.push(item) if yield item }
    puts array1.length == @list.length
  end

  # any method
  def any?
    @list.each do |element|
      return true if yield element
    end
    false
  end

  # filter method
  def filter
    array2 = []
    @list.each do |item|
      array2.push(item) if yield item
    end
    print array2
  end
end

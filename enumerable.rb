module MyEnumerable
  def all?
    @list.each do |element|
      return false if yield(element) == false
    end
    true
  end

  def any?
    @list.each do |single|
      return true if yield(single) == true
    end
    false
  end

  def filter
    tmp_array = []
    @list.each do |single|
      tmp_array << single if yield(single)
    end
    tmp_array
  end
end

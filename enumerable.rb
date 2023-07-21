module MyEnumerable
  def all?
    @list.each do |single|
      false if yield(single) == false
    end
    true
  end

  def any?
    @list.each do |single|
      true if yield(single) == true
    end
  end
end

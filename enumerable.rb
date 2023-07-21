module MyEnumerable
  def all?
    @list.each do |single|
      false if yield(element) == false
    end
    true
  end
  
end
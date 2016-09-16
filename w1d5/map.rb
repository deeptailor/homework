class Map
  def initialize
    @var = []
  end

  def assign(key, value)
    sub_array = [key, value]

      if includes?(key)
        @var.each do |s|
          s[1] = value if s[0] == key
        end
      else
        @var << sub_array
      end

  end

  def includes?(key)
    k = @var.map{|e| e[0]}
    k.include?(key)
  end

  def lookup(key)
    @var.each do |sub_array|
      return sub_array if sub_array[0] == key
    end
    nil
  end

  def delete(key)
    if includes?(key)
      sub_array = lookup(key)
      @var.delete_if{|e| e == sub_array}
    else
      nil
    end
  end

  def show
    @var
  end
end

# m = Map.new
# p m.assign('hello', 'world')
# p m.assign('hi', 'world')
# p m.lookup('hello')
# m.delete('hi')
# p m.show

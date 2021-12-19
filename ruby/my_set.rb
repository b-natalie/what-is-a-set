class MySet 
  attr_reader :data
  # throw an error if called with anything other than string, array or nothing
  # if an iterable is provided only its unique values should be in data
  # strings and arrays will need to be broken down by their elements/characters
  def initialize(iterable = nil)
    raise "Not an iterable" if !iterable.instance_of?(String) && !iterable.instance_of?(Array) && !iterable.nil?
    @data = {}

    if !iterable.nil?
      elements = iterable.instance_of?(String) ? iterable.split("") : iterable

      elements.each { |item| @data[item] = true }
    end
  end

  # return number of elements in MySet
  def size
    @data.size
  end

  # add an item to MySet as is
  # return the MySet instance
  def add(item)
    @data[item] = true
    self
  end

  # delete an item from MySet
  # return true if successful otherwise false
  def delete(item)
    !!@data.delete(item)
  end

  # return true if in MySet, otherwise false
  def has(item)
    !!@data[item]
  end

  # return data as an array
  def entries
    @data.keys
  end
end

# if __FILE__ == $PROGRAM_NAME
#   # Don't forget to add your own!
# end



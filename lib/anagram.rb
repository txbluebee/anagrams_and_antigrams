class Array
  define_method(:anagram?) do
    new_arr = []
    self.each() do |word|
      word = word.downcase().split('').sort().join()
      new_arr.push(word)
    end
    new_arr[0] == new_arr[1]
 end
end

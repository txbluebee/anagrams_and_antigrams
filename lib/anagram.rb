class Array
  define_method(:anagram) do
    letters_arr = []
    self.each() do |sentence|
      sentence = sentence.downcase().split('')
      letters_arr.push(sentence)
    end
    first = letters_arr[0]
    second = letters_arr[1]
    if first.reverse().join() == second.reverse().join()
      return 'These words are palindromes.'
    elsif first.sort().join() == second.sort().join()
      return 'They are anagrams.'
    end
  end
end

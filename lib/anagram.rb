class Array
  define_method(:anagram) do
    letters_arr = []
    self.each() do |sentence|
      sentence = sentence.gsub(/[.,' ]/,'').downcase().split('')
      letters_arr.push(sentence)
    end
    vowels = ["a","e","i","o","u","y"]

    first = letters_arr[0]
    second = letters_arr[1]
    if (first&vowels).any?() && (second&vowels).any?()
      if first.reverse().join() == second.reverse().join()
        'These words are palindromes.'
      elsif first.sort().join() == second.sort().join()
        'They are anagrams.'
      elsif !(first&second).any?()
        "These words have no letter matches and are antigrams."
      else
        "They are not anagrams."
      end
    else
      "You need to input actual words!"
    end
  end
end

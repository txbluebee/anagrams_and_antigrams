require('rspec')
require('anagram')

describe('String#anagram') do
  it("check if two words are anagrams.") do
    expect(["listen", "silent"].anagram()).to(eq("They are anagrams."))
  end
  it('Account for the possibility that words might have different cases but should still be anagrams') do
    expect(["Tea", "Eat"].anagram()).to(eq("They are anagrams."))
  end
  it("If a word or phrase is an anagram, check if it's also a palindrome.") do
    expect(["Anna", "anna"].anagram()).to(eq('These words are palindromes.'))
  end
end

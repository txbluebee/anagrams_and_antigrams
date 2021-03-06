require('rspec')
require('anagram')

describe('String#anagram') do
  it("check if two words are anagrams.") do
    expect(["listen", "silent"].anagram()).to(eq("They are anagrams."))
  end
  it("check if two words are not anagrams.") do
    expect(["hello", "world"].anagram()).to(eq("They are not anagrams."))
  end
  it('Account for the possibility that words might have different cases but should still be anagrams') do
    expect(["Tea", "Eat"].anagram()).to(eq("They are anagrams."))
  end
  it("Add a rule to check if the inputs are words.A word must contain a vowel ") do
    expect(["kgbt", "kite"].anagram()).to(eq("You need to input actual words!"))
  end
  it('If phrases aren\'t anagrams, the method should check whether they are actually "antigrams."') do
    expect(["hi", "bye"].anagram()).to(eq("These words have no letter matches and are antigrams."))
  end
  it('Account for multiple words being anagrams or "antigrams."') do
    expect(["Misfortune", "it's more fun"].anagram()).to(eq("They are anagrams."))
  end
  it("If a word or phrase is an anagram, check if it's also a palindrome.") do
    expect(["Anna", "anna"].anagram()).to(eq('These words are palindromes.'))
  end
end

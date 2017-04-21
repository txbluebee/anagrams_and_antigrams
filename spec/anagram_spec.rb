require('rspec')
require('anagram')

describe('String#anagram') do
  it("check if two words are anagrams.") do
    expect(["listen", "silent"].anagram?()).to(eq(true))
  end
  it('Account for the possibility that words might have different cases but should still be anagrams') do
    expect(["Tea", "Eat"].anagram?()).to(eq(true))
  end
end

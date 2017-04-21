require('rspec')
require('anagram')

describe('String#anagram') do
  it("check if two words are anagrams.") do
    expect(["listen", "silent"].anagram?()).to(eq(true))
  end
end

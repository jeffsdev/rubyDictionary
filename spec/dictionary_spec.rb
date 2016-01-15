require('rspec')
require('word')
require('definition')

    #
##### Specs for Word class =========================>
    #

describe('Word') do
  describe('#term') do
    it('returns a word') do
      test_word = Word.new({:term => "Ruby"})
      expect(test_word.term()).to(eq("Ruby"))
    end
  end
end

    #
##### Specs for Definition class =========================>
    #

describe('Definition') do
  describe('#meaning') do
    it('returns the definition for a word') do
      test_meaning = Definition.new({:meaning => "A cool programming language"})
      expect(test_meaning.meaning()).to(eq("A cool programming language"))
    end
  end
end

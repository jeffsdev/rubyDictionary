require('rspec')
require('word')
require('definition')

    #
##### Specs for Word class =========================>
    #

describe('Word') do
  before() do
    Word.clear()
  end

  describe('#term') do
    it('returns a word') do
      test_word = Word.new({:term => "Ruby"})
      expect(test_word.term()).to(eq("Ruby"))
    end
  end

  describe('#save') do
    it('saves a word into an array') do
      test_word = Word.new({:term => "Ruby"})
      test_word.save
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('.all') do
    it('returns an empty array') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it('Empties the array of words') do
      Word.new({:term => "Ruby"})
      Word.clear
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns the id of a word') do
      test_word = Word.new({:term => "Ruby"})
      test_word.save
      expect(test_word.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('finds a word based on its id number') do
      test_word = Word.new({:term => "Ruby"})
      test_word.save
      test_word2 = Word.new({:term => "JavaScript"})
      test_word2.save
      expect(Word.find(test_word.id())).to(eq(test_word))
    end
  end
end

    #
##### Specs for Definition class =========================>
    #

describe('Definition') do
  before() do
    Definition.clear()
  end

  describe('#meaning') do
    it('returns the definition for a word') do
      test_meaning = Definition.new({:meaning => "A cool programming language"})
      expect(test_meaning.meaning()).to(eq("A cool programming language"))
    end
  end

  describe('#save') do
    it('saves a definition into an array') do
      test_definition = Definition.new({:meaning => "A cool programming language"})
      test_definition.save
      expect(Definition.all()).to(eq([test_definition]))
    end
  end

  describe('.all') do
    it('returns an empty array') do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it('Empties the array of definitions') do
      Definition.new({:meaning => "A cool programming language"})
      Definition.clear
      expect(Definition.all()).to(eq([]))
    end
  end
end

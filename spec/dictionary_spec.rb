require('rspec')
require('word')


describe('Word') do
  describe('Word#term') do
    it('returns a word') do
      test_word = Word.new({:term => "Hello"})
      expect(test_word.term()).to(eq("Hello"))
    end
  end
end

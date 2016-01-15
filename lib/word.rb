class Word
  attr_reader(:term)
  @@words = []

  def initialize(attributes)
    @term = attributes.fetch(:term)
    # @id = Word.length + 1
  end

  define_singleton_method(:all) do
    @@words
  end

  def save
    @@words.push(self)
  end

  # define_singleton_method(:id) do
  #   @id
  # end


end

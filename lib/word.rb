class Word
  attr_reader(:term)
  @@words = []

  def initialize(attributes)
    @term = attributes.fetch(:term)
    @id = @@words.length + 1
  end

  define_singleton_method(:all) do
    @@words
  end

  def save
    @@words.push(self)
  end

  def id
    @id
  end

  define_singleton_method(:clear) do
    @@words = []
  end


end

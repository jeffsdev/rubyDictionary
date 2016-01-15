class Word
  attr_reader(:term)
  @@words = []

  def initialize(attributes)
    @term = attributes.fetch(:term)
    @id = @@words.length + 1
    @definitions = []
  end

  def definitions
    @definitions
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

  define_singleton_method(:find) do |identification|
    found_item = nil
    @@words.each do |item|
      if item.id == identification
        found_item = item
      end
    end
    found_item
  end
end

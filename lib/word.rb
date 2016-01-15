class Word
  attr_reader(:term)
  @@words = []

  def initialize(attributes)
    @term = attributes.fetch(:term)
  end


end

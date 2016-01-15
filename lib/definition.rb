class Definition
  attr_reader(:meaning)
  @@definitions = []

  def initialize(attributes)
    @meaning = attributes.fetch(:meaning)
    @id = @@definitions.length + 1
  end

  define_singleton_method(:all) do
    @@definitions
  end

  def save
    @@definitions.push(self)
  end

  define_singleton_method(:clear) do
    @@definitions = []
  end



end

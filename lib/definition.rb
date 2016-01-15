class Definition
  attr_reader(:meaning)
  @@definitions = []

  def initialize(attributes)
    @meaning = attributes.fetch(:meaning)
  end
end

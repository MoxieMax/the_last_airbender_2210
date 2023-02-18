class CharacterDetail
  attr_reader :name,
              :allies,
              :enemies,
              :affiliations
  def initialize(response)
    @name = response[:name]
    @allies = response[:allies]
    @enemies = response[:enemies]
    @affiliations = response[:affiliations]
  end
end
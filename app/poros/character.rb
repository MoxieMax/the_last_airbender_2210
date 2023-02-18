class Character
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation,
              :photo
  def initialize(response, allies: 'None', enemies: 'None', affiliation: 'None')
    @name = response[:name]
    @allies = response[:allies].join(", ")
    @enemies = response[:enemies].join(", ")
    @affiliation = response[:affiliation]
    @photo = response[:photoUrl]
  end
end
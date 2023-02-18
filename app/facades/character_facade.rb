class CharacterFacade
  def fire
    characters = CharacterService.fire_nation
    characters.map do |data|
      Character.new(data)
    end
  end
end
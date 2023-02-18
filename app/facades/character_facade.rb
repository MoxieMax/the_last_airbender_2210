class CharacterFacade
  def fire
    characters = CharacterService.fire_nation
    characters.map do |data|
      # binding.pry
      Character.new(data)
    end
  end
end
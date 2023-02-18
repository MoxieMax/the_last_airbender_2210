require 'rails_helper'
require './app/facades/character_facade'

RSpec.describe CharacterFacade do
  # let!(:character_facade) { CharacterFacade.new }
  
  before :each do
    json_response = File.read("spec/fixtures/fire_nation.json")
    # binding.pry
    @character_facade = CharacterFacade.new
  end
  
  it 'exists' do
    expect(@character_facade).to be_a(CharacterFacade)
  end
  
  it 'has details' do
    details = @character_facade.fire
    chan = details.first
    
    expect(details.count).to eq(97)
    expect(chan.name).to eq("Chan (Fire Nation admiral)")
    expect(chan.allies).to eq("Ozai")
    expect(chan.enemies).to eq("Earth Kingdom")
    expect(chan.affiliation).to eq("Fire Nation Navy")
    expect(chan.photo).to eq(nil)
  end
end
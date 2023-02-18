class CharacterService
  def self.get_data(endpoint)
    conn = Faraday.new(url: "https://last-airbender-api.fly.dev/api/v1/")
    response = conn.get(endpoint)
    data = response.body
    JSON.parse(data, symbolize_names: true)
  end
  
  def self.fire_nation #with limit of 25 #perPage=25&page=5
    get_data("/api/v1/characters?affiliation=Fire+Nation&perPage=999") 
  end
end
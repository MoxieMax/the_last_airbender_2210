class CharacterService
  def self.conn
    Faraday.new(
      url: "https://last-airbender-api.fly.dev/api/v1/"
    )
  end
  
  def self.fire_nation #with limit of 25
    response = conn.get("characters?affiliation=Fire+NationperPage=25&page=5")
    JSON.parse(response.body, symbolize_names: true)
  end
end
class SearchController < ApplicationController
  def index
    @nation = params[:nation].gsub(/[^0-9a-z]/i, ' ').split(/ |\_/).map(&:capitalize).join(" ")
    @total_results = CharacterFacade.fire.count
    # @members = 
  end
end

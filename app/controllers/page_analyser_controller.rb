class PageAnalyserController < ApplicationController

  def index
    search = Searcher.new(params[:q])
    @links = search.results
  end

end
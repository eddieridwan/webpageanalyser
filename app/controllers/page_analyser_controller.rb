class PageAnalyserController < ApplicationController

  def index
    search = Searcher.new(params[:q])
    @links = search.results
  end
  
  def show
    @page = PageAnalyser.new(params[:url])
  end

end
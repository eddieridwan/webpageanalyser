class PageAnalyserController < ApplicationController

  def index
    search = Searcher.new(params[:q])
    @links = search.results
    @grouped_links = @links.group_by {|l| URI.parse(l.href).host } if params[:group_by]
  end
  
  def show
    @page = PageAnalyser.new(params[:url])
  end

end
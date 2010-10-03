require 'mechanize'

class Searcher
  def initialize(criteria)
    @agent = Mechanize.new
    # http://www.google.com.au/search?num=50&q=indonesian+software
    @search_result = @agent.get("http://google.com.au/search?num=100&q=#{criteria}")
    # @agent.get("http://google.com/") do |page|
    #    @search_result = page.form_with(:name => 'f') do |search|
    #      search.q = criteria
    #    end.submit
    #  end
  end
  
  def links
    @search_result.links
  end
  
  def results
    self.links.reject {|l| l.href.blank? || l.href.match(/google.com/) || !l.href.starts_with?("http") || l.href.match(/webcache/)}
  end
end
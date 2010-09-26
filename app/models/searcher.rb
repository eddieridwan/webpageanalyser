require 'mechanize'

class Searcher
  def initialize(criteria)
    @agent = Mechanize.new
    @agent.get('http://google.com/') do |page|
       @search_result = page.form_with(:name => 'f') do |search|
         search.q = criteria
       end.submit
     end
  end
  
  def links
    @search_result.links
  end
  
  def results
    self.links.reject {|l| l.href.blank? || l.href.match(/google.com/) || URI.parse(l.href).scheme != "http" || l.href.match(/webcache/)}
  end
end
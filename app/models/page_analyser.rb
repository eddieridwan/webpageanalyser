class PageAnalyser
  def initialize(url)
    @url = url
    agent = Mechanize.new
    @page = agent.get(url)
  end
  
  def url
    @url
  end
  
  def title
    @page.title
  end
  
  def links
    @page.links
  end
  
  def host
    URI.parse(@url).host
  end
  
  def external_links
    self.links.reject {|l| l.href.blank? || l.href.match(/#{self.host}/) || URI.parse(l.href).scheme != "http"}
  end
end
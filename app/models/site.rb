require 'mechanize'

class Site
  def initialize(url)
    @url = url
    agent = Mechanize.new
    @page = agent.get(url)
  end
  
  def enterprise_type
    case 
    when URI.parse(@url).host.match(/\.edu(\.)*(.*)$/)
      "Educational"
    when URI.parse(@url).host.match(/\.org(\.)*(.*)$/)
      "Non-commercial"
    when URI.parse(@url).host.match(/\.gov(\.)*(.*)$/)
      "Government"
    when URI.parse(@url).host.match(/\.com(\.)*(.*)$/)
      "Commercial"
    end
  end
  
  def home
    h = @page.links.select {|l| l.text.match(/(H|h)ome|HOME/)}.first
    if h.present? && h.href.starts_with?('/') 
      h.href = URI.parse(@url).host + h.href
    else
      h
    end
  end

end
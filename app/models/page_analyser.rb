require 'mechanize'

class PageAnalyser

  attr_accessor :site

  def initialize(url)
    @url = url
    agent = Mechanize.new
    @page = agent.get(url)
    @site = Site.new(@url)
  end
  
  def url
    @url
  end
  
  def file_type
    case URI.parse(@url).path.split('.').last
    when ".ppt"
      "ppt"
    else
      "html"
    end
  end
  
  def title
    case file_type
    when "html"
      @page.title
    else
      "No title found"
    end
  end
  
  def links
    @page.links if file_type = "html"
  end
  
  def host
    URI.parse(@url).host
  end
  
  def external_links
    if file_type == "html"
      self.links.reject {|l| l.href.blank? || l.href.match(/#{self.host}/) || l.href.match(/javascript\:/) || URI.parse(l.href).scheme != "http"}
    end
  end
  
end
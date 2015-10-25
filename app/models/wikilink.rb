class Wikilink
  def build(loc)
    url = "https://en.wikipedia.org/wiki/" 
    url + loc.strip
  end
end
#
# Page Title
#
# Write a method that takes a URL and
# returns the website's title.
#
# Examples:
# get_title("http://google.com") => "Google"
# get_title("http://www.reddit.com") => "reddit: the front page of the internet"
#
# Check your answers by running the tests:
# ruby tests/16_page_title_test.rb
#

def get_title(url)
  # your code here
  names = url.split('//')[1]
             .split('.')
  title = names[1].capitalize
end

p get_title("http://www.google.com") 
p get_title("http://www.reddit.com") 
p get_title("http://www.reddit.com?name=redit&password=adse123") 
p get_title("http://www.sudantribune.com/spip.php?article66361")
#
# Page Title
#
# Write a method that takes a URL and
# returns the website's title.
#
# Examples:
# get_title("http://google.com") => "Google"
# get_title("http://www.reddit.com") => "reddit: the front page of the internet"
#
# Check your answers by running the tests:
# ruby tests/16_page_title_test.rb
#
require 'nokogiri' # gem install nokogiri (if you don't have it installed)
require 'open-uri'

def pageTitle(url)
  # title = get_title(url)
  # doc = Nokogiri::HTML(open(url))
  # Fetch and parse HTML document
  
  # doc.search('title').children[0].text
  # child = doc.search('title').children[0].text.split(' - ')[1]
  # child = doc.search('title').children[0].text.split('-')[1].strip
  #child.to_s.strip!
  #child
  # children.each_with_index do |child, i|
  #   p child.text
  # end
end

def pageTitle(url)
  title = get_title(url)
  doc = Nokogiri::HTML(open(url))

  case title 
  when 'Google'
    # title 
    doc.search('title').children[0].text
  when 'Reddit'
    doc.search('title').children[0].text
  when 'Sudantribune'
    doc.search('title').children[0].text.split('-')[1].strip
  end
  # Fetch and parse HTML document
  
  # doc.search('title').children[0].text
  # child = doc.search('title').children[0].text.split(' - ')[1]
  # child = doc.search('title').children[0].text.split('-')[1].strip
  #child.to_s.strip!
  #child
  # children.each_with_index do |child, i|
  #   p child.text
  # end
end
#p pageTitle("http://www.google.com")
#p pageTitle("http://www.reddit.com")
#p pageTitle("http://www.sudantribune.com/spip.php?article66361")

def pageTitle(url)
  doc = Nokogiri::HTML(open(url))
  doc.search('title').children[0].text
end

p pageTitle("http://www.google.com")
p pageTitle("http://www.reddit.com")
p pageTitle("http://www.sudantribune.com/spip.php?article66361")



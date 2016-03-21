require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.skillcrush.com'))

#puts doc.inspect

#puts doc.search("h1")

#puts doc.search("h1.entry-title")

#puts doc.css("h1.entry-title")

#puts doc.css("h1.entry-title").inner_html

#puts doc.css("h1.entry-title").children

#puts doc.css("h1.entry-title").children[0]

#puts doc.title

#puts doc.methods


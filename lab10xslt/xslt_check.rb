require 'nokogiri'

doc = Nokogiri::XML(File.read('xml_str.xml'))

xslt = Nokogiri::XSLT(File.read('transform.xslt'))

puts xslt.transform(doc)

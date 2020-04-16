require 'nokogiri' 
require 'rubygems'
require 'open-uri'


# 1 : Récupérer les URLS de chaque ville

page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/val-d-oise.html"))
page.xpath('//*[@id="voyance-par-telephone"]/table/tbody/tr[2]/td/table/tbody/tr/td/p/a').each do |el|
puts el.text
end	

# 2 : Mettre ces URL en array 

# 3 : Faire une boucle de Nokogiri en remplacant 1 URL par l'array 
#     et laisser le xpath de la page 

# page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/95/avernes.html"))
# page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |email|
# puts email.text
# end	

# page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/95/avernes.html"))
# page.xpath('/html/body/div/main/section[1]/div/div/div/h1').each do |nom|
# puts nom.text
# end	

#4 : faire un hash des array villes - emails créés

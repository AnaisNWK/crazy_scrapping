require 'nokogiri' 
require 'rubygems'
require 'open-uri'


def extract_symbole
	arr_symbole = []
	doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
	doc.xpath('//*[@id="__next"]/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[3]/div').each do |symbole|
		arr_symbole << symbole.text
	end 
	return arr_symbole
end

def extract_price
	arr_price = []
	doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
	doc.xpath('//*[@id="__next"]/div/div[2]/div[1]/div[2]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/a').each do |price|
		arr_price << price.text
	end
	return arr_price
end

def hash_cryptocur
	cryptocurrencies = []
	cryptocurrencies = [extract_symbole.zip(extract_price)]
	return cryptocurrencies
end 


def perform 
	extract_price
	extract_symbole
	hash_cryptocur
end

puts perform









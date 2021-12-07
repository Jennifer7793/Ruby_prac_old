# Youbike API
# endpoint https://tcgbusfs.blob.core.windows.net/dotapp/youbike/v2/youbike_immediate.json

require 'net/http'
require 'json'
require '/1207/bikeinfo.rb'

print "請輸入站點名稱（若不輸入可查詢所有站點）："
keyword = gets.chomp.strip

BikeInfo.new(keyword: keyword)

uri = URI('https://tcgbusfs.blob.core.windows.net/dotapp/youbike/v2/youbike_immediate.json')
sites = JSON.parse(Net::HTTP.get(uri))

if not keyword.empty?
  sites = sites.filter { |site| site['sna'].include?(keyword) }
end

result = sites.map { |site| { site_name: site['sna'].delete_prefix('YouBike2.0_'), bike_amount: site['sbi'] } }

puts result
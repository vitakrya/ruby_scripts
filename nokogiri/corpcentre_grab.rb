require 'nokogiri'
require 'open-uri'

def compose_doc(desired_url)
	Nokogiri::HTML(open(desired_url))
end

centre_smart_tvs_page = compose_doc('http://www.corpcentre.ru/catalog/smart_televizory/')
# centre_smart_tvs_page.css('.info .name').each do |item|
	# puts item.text # LED телевизор Samsung UE48J6300AU
	# puts item.node_name # div
	# puts item.class # Nokogiri::XML::Element
	# puts item.node_type
	# puts item.previous_element # 1
	# puts item.attribute('class') # name
	# puts item.content # LED телевизор Samsung UE48J6300AU
	# puts item.inner_html # <a href="/goods/led_televizor_samsung_ue48j6300au/">LED телевизор Samsung UE48J6300AU</a>
	# puts item.serialize # <div class="name"><a href="/goods/led_televizor_samsung_ue48j6300au/">LED телевизор Samsung UE48J6300AU</a></div>
# end
item_blocks = centre_smart_tvs_page.xpath('//div[@class="item-block-top clearfix"]')
puts item_blocks.count
item_blocks.each do |item|
	puts item.at_xpath('div[@class="info"]/div[@class="name"]/a').attribute('href')
	# /goods/led_televizor_samsung_ue48j6300au/
	# /goods/3d_televizor_lg_49lf640v/
	# /goods/led_televizor_lg_40lf634v/
	# /goods/led_televizor_samsung_ue_32j5530/
	# /goods/led_televizor_lg_49uf640v/
	# /goods/led_televizor_lg_43uf680v/
	# /goods/led_televizor_lg_28lf498u/
	# /goods/3d_televizor_lg_79uf860v/
	# /goods/3d_televizor_lg_55uf860v/
	# /goods/led_televizor_samsung_ue_48j5510/
	# /goods/led_televizor_samsung_ue_48j5200au/
	# /goods/led_televizor_samsung_ue_48j5530/
	# /goods/led_televizor_samsung_ue55ju6600u/
	# /goods/3d_televizor_lg_50lf650v/
	# /goods/led_televizor_samsung_ue48ju6000u/
	# /goods/led_televizor_samsung_ue48ju6610u/
	# /goods/3d_televizor_lg_55lf650v/
	# /goods/led_televizor_samsung_ue50js7200u/
	# /goods/led_televizor_samsung_ue55ju6430u/
	# /goods/3d_televizor_lg_55uf8507/
end
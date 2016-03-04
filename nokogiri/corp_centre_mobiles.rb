require 'nokogiri'

mobiles_list = []
mobiles_list.push({
  number: 1,
  desc: 'filtered rows by price within 1500 and 3000 r',
  url: 'http://www.corpcentre.ru/catalog/mobilnye_telefony/?f[858][min]=1500&f[858][max]=3000'
})

mobiles_list.push({
  number: 2,
  desc: 'filtered by manufacturer, price and type',
  url: 'http://www.corpcentre.ru/catalog/mobilnye_telefony/?f[857][]=1421&f[857][]=248&f[857][]=1016&f[858][min]=1500&f[858][max]=3000&f[3019][]=%C3%91%C2%82%C3%90%C2%B5%C3%90%C2%BB%C3%90%C2%B5%C3%91%C2%84%C3%90%C2%BE%C3%90%C2%BD'
})


  
